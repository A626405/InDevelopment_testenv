# source("renv/activate.R")
Type: Project
Title: 'Data Exploration: 2013 AWS Honeypot DDoS Dataset'
Version: 1.3
  Authors@R: c(person(given = "Alexis", family = "Leclerc",  
         role = c("aut", "cre"), 
         email = "alexisglleclerc@gmail.com")
)

Description: 'Data Exploration & Visualization. Utilizes git, SQLite3, Python, R, RShiny & Docker.'

Encoding: UTF-8

URL: 'https://github.com/A626405/InDevelopment_testenv'

Imports:
DBI,
RSQLite,
dplyr,
data.table,
tidyr,
reticulate,
box,
parallel,
doParallel


Sys.setenv("renv.config.user.profile"=T)
Sys.setenv("renv.config.sandbox.enabled"=T)
Sys.setenv("renv.config.repos.override"=T)
Sys.setenv("renv.config.auto.snapshot"=F)
Sys.setenv("renv.config.updates.parallel"= parallel::detectCores()-1)
Sys.setenv("renv.config.filebacked.cache"=F)
Sys.setenv("renv.config.cache.symlinks"=T)
Sys.setenv("renv.config.cache.enabled"=T)
Sys.setenv("renv.config.activate.prompt"=T)
Depends: R (>= 4.4.2)
