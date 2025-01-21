#r_version <- paste0("Depends: R (>= ", R.version$major, ".", R.version$minor, ")")
#write(r_version, file = "data/DESCRIPTION", append = TRUE)

options(verbose=F,catch.script.errors=T,echo=F,renv.consent=T,PCRE_use_JIT=T,prompt="y ")

if (!file.exists("renv.lock")) {
  renv::init(profile="default",repos=c("https://cloud.r-project.org"),load=T,project=NULL)
}

renv::snapshot()


#renv::restore(lockfile="renv.lock",prompt=F)
#renv::use(lockfile="renv.lock",isolate=T,sandbox=T,attach=T)

#source("renv/activate.R")
source("code/R/functions.r")
source("code/R/data_preprocessing.r")

Rprof()
