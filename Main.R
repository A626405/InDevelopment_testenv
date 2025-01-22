options(verbose=F,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ",repos="https://cloud.r-project.org")

cache<-cachem::cache_mem(max_size=(512*1024^2),evict="fifo",max_age=1200,max_n=500000)
cache$prune()
clrmem(2)

if (!file.exists("DESCRIPTION")) {
  DESCRIPTION <- "Package: QMB6304FinalProject2024\nType: Project\nTitle: 'Data Exploration: 2013 AWS Honeypot DDoS Dataset'\nVersion: 1.0\nAuthors@R: c(person(given = 'Alexis', family = 'Leclerc', role = c('aut', 'cre'), email = 'alexisgilleslussoleclerc@gmail.com'))\nDescription: 'Data Exploration & Visualization. Utilizes git, SQLite3, Python, R, RShiny & Docker.'\nEncoding: UTF-8\nURL: https://github.com/A626405/QMB6304FinalProject2024\nImports:\nDBI,\nRSQLite,\ndplyr,\nggplot2,\nscales,\nshiny,\ntidyr,\nstringi,\nmapdata,\nreticulate,\nlubridate,\ntidyselect,\nvroom"
  writeLines(DESCRIPTION, "DESCRIPTION")
}


r_version <- paste0("Depends: R (>= ", R.version$major, ".", R.version$minor, ")")
write(r_version, file = "DESCRIPTION", append = TRUE)


rm(r_version)
clrmem(3)


if (!file.exists("renv.lock")) {
  renv::init(profile="default",repos="https://cloud.r-project.org",load=T)
}else{
  renv::snapshot(type="explicit",update=T,dev=T)
}

reticulate::py_run_file("code/Python/functions.py")
source("code/R/functions.r")
clrmem(3)
source("code/R/data_preprocessing.r")
cache$prune()
clrmem(1)