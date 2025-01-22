clrmem(1)
source("code/R/functions.r")
py_run_file("code/Python/functions.py")
library(reticulate)



path_to_db_char="data/internal/databases.db"
file_name="working_data.RDA"
loaddb_data=list("path_to_db_char"=path_to_db_char,"file_name"=file_name)
gc()
py$read_db(path_to_db_char,file_name)
load_db(path_to_db_char,loaddb_data$file_name)
rm(path_to_db_char,file_name)

<-py$read_db(workdata_loadsepH$path_to_db_char,workdata_loadsepH$file_name)


rm(cleaned)


EUHoneypot <- maindf |>
  filter(Host == "groucho_eu")


SAHoneypot <- maindf |>
  filter(Host == "groucho_sa")


AUSHoneypot <- maindf |>
  filter(Host == "groucho_sydney")


TOKHoneypot <- maindf |>
  filter(Host == "groucho_tokyo")


SINGHoneypot <- maindf |>
  filter(Host == "groucho_singapore")


USEASTHoneypot <- maindf |>
  filter(Host == "groucho_us_east")


OREGONHoneypot <- maindf |>
  filter(Host == "groucho_oregon")


ZEPNORCALHoneypot <- maindf |>
  filter(Host == "zeppo_norcal")


GRNORCALHoneypot <- maindf |>
  filter(Host == "groucho_norcal")
