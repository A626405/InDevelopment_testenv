options(verbose=F,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ",repos="https://cloud.r-project.org")


getcache<-function(){
  cache<-cachem::cache_mem(max_size=(512*1024^2),evict='fifo',max_age=600,max_n=500000)
  cache$prune()
}


load_lb<-function(LibList){
  Lib <- as.list(LibList)
  for(i in 1:length(Lib)){
    require(Lib[[i]],character.only=T)}
  cache$prune()
}
load_lb<-memoise::memoise(load_lb,cache=cachem::cache_mem(max_size=18000))

clrmem <- function(select_123){
  if(select_123==1){
  gc(F,T,T)
  cat("\014")
  
  if(!requireNamespace("reticulate")==F){
  reticulate::py_run_string("reset = globals().clear()")
  reticulate::py_run_string("del reset")}
  cache$prune()
  clrmem(3)
  
  objs_to_remove <- ls(all.names = TRUE, envir = .GlobalEnv)
  objs_to_remove <- objs_to_remove[!grepl("^renv", objs_to_remove)]
  rm(list = objs_to_remove, envir = .GlobalEnv)
  clrmem(3)
  cache$prune()
  
  options(verbose=F,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ",repos="https://cloud.r-project.org")
  reticulate::use_python(python="C:/Python312/python.exe",required=T)
  reticulate::py_run_file("code/Python/functions.py")
  
  source("code/R/functions.r")
  load_lb(c("dplyr","tidyr"))
  
  cache$prune()
  gc(F,T,T)
  cat("\014")
  
  }else if(select_123==2){
    gc()
    cat("\014")
    gc(F,T,T)
    
  }else if(select_123==3){
    gc()
    cat("\014")
    gc()
    
  }else{print("Incorrect Selection")}
}

'getlibs <- function(pkgs_charlist) {
  Lib <- as.list(pkgs_charlist)
  require(doParallel)
  require(parallel)
  num_cores <- parallel::detectCores() - 1
  cl <- parallel::makeCluster(num_cores)
  doParallel::registerDoParallel(cl)
  parallel::mclapply(Lib, function(pkg){
          require(pkg,character.only=T)
  },mc.cores = num_cores,mc.preschedule=T)  
  parallel::stopCluster(cl)
}'

create_db <- function(dbpath){
  dbpath<-file.path(dbpath)
  if(!file.exists("data/internal/datasets.db")){
    py$create_db(dbpath)
    cache$prune()
    gc(F,T,T)
  }else{print("The Database Already Exists.")}
}
create_db<-memoise::memoise(create_db,cache=cachem::cache_mem(max_size=20000))

save_db <- function(rda_path,rda_name,db_path,tbl_name,col_name){
  require(DBI,attach.required=T)
  require(RSQLite,attach.required=T)
  conn <- DBI::dbConnect(RSQLite::SQLite(),db_path)
  current_dbs <- c(RSQLite::sqliteQuickColumn(conn,tbl_name,col_name))
  DBI::dbDisconnect(conn)
  gc(F,T,T)
    if(!(rda_name %in% current_dbs)){
      py$write_db(rda_path,rda_name,db_path,tbl_name)
      cache$prune()
      gc(F,T,T)
    }else{print("Error! Dataframe Already Exists In Database.")}
}
save_db<-memoise::memoise(save_db,cache=cachem::cache_mem(max_size=40000))

'load_db <- function(path_to_db_char,file_name){
  data=list(path_to_db_char,file_name)
  py$read_db(data$path_to_db_char,data$file_name) 
}'