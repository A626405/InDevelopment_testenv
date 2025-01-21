options(verbose=F,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ",repos="https://cloud.r-project.org")

if (!file.exists("DESCRIPTION")) {
  DESCRIPTION <- "Type: Project\nTitle: 'Data Exploration: 2013 AWS Honeypot DDoS Dataset'\nVersion: 1.0\nAuthors@R: c(person(given = 'Alexis', family = 'Leclerc', role = c('aut', 'cre'), email = 'alexisgilleslussoleclerc@gmail.com'))\nDescription: 'Data Exploration & Visualization. Utilizes git, SQLite3, Python, R, RShiny & Docker.'\nEncoding: UTF-8\nURL: https://github.com/A626405/QMB6304FinalProject2024\nImports:\nDBI,\nRSQLite,\ndplyr,\nggplot2,\nscales,\nshiny,\ntidyr,\nstringi,\nmapdata,\nreticulate,\nlubridate,\ntidyselect,\nvroom"
  writeLines(DESCRIPTION, "DESCRIPTION")
  
  r_version <- paste0("Depends: R (>= ", R.version$major, ".", R.version$minor, ")")
  write(r_version, file = "DESCRIPTION", append = TRUE)
}
rm(r_version)
gc()


if (!file.exists("renv.lock")) {
  renv::init(profile="default",repos="https://cloud.r-project.org",load=T)
}else{
  renv::snapshot(type="explicit",update=T,dev=T)
}

library(reticulate,attach.required=T)
py_run_file("code/Python/functions.py")
source("code/R/functions.r")
create_db("data/internal/databases.db")
source("code/R/data_preprocessing.r")

#Rprof()
