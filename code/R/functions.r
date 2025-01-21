#DESCRIPTIONS<-list('DBI','RSQLite','dplyr','ggplot2','scales','shiny','tidyr','stringi','mapdata','reticulate','lubridate','tidyselect')
options(verbose=F,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ",repos="https://cloud.r-project.org")

load_lb<-function(LibList){
  Lib <- as.list(LibList)
  for(i in 1:length(Lib)){
    require(Lib[[i]],character.only=T)}
}

clrmem <- function(select_123){
  if(select_123==1){
  gc(F,T,T)
  cat("\014")
  
  objs_to_remove <- ls(all.names = TRUE, envir = .GlobalEnv)
  objs_to_remove <- objs_to_remove[!grepl("^renv", objs_to_remove)]
  rm(list = objs_to_remove, envir = .GlobalEnv)
  
  source("code/R/functions.r")
  
  load_lb(c("dplyr","tidyr"))
  
  cat("\014")
  gc(F,F,T)
  
  }else if(select_123==2){
    
    gc(F,F,T)
    cat("\014")
    gc(F,T,T)
    cat("\014")
    
  } else if(select_123==3){
    
    gc()
    cat("\014")
    gc()
    cat("\014")
    
  } else{
    print("Incorrect Selection")
  }
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
    clrmem(2)
  } else{
    print("The Database Already Exists.")
  }
}

save_db <- function(rda_path,rda_name,db_path,tbl_name,col_name){
  require(DBI,attach.required=T)
  require(RSQLite,attach.required=T)
  conn <- DBI::dbConnect(RSQLite::SQLite(),db_path)
  current_dbs <- RSQLite::sqliteQuickColumn(conn,tbl_name,col_name)
  current_dbs<-c(current_dbs)
  DBI::dbDisconnect(conn)
  
    if(!(rda_name %in% current_dbs)){
      py$write_db(rda_path,rda_name,db_path,tbl_name)
      clrmem(2)
    
    }else{
      print("Error! Dataframe Already Exists In Database.")
  }
}

load_db <- function(path_to_db_char){
  py$read_db(path_to_db_char) 
  clrmem(2)
}



