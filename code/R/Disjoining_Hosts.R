clrmem(1)
source("code/R/functions.r")
py_run_file("code/Python/functions.py")
library(reticulate)


tbname<-c('databases')
db_name<-c('data/internal/databases.db')
filename<-c('working_data.RDA')
loaddb_data=list(tb_name='databases',db_name='data/internal/databases.db',file_namee='working_data.RDA')

loaddb_data=list('path_to_db_char'=path_to_db_char,'file_name'=file_name)
gc()
py$read_db(path_to_db_char,file_name)
load_db(path_to_db_char,loaddb_data$file_name)
rm(path_to_db_char,file_name)


conn<- DBI::dbConnect(RSQLite::SQLite(),"data/internal/databases.db")
RSQLite::dbReadTable(conn,"databases")
t<- RSQLite::dbGetQuery(conn,statement=c("SELECT data FROM databases WHERE file_name = 'working_data.RDA'"))
DBI:dbDisconnect(conn)

read_db(loaddb_data$db_name,loaddb_data$tb_name,loaddb_data$file_namee)


read_db<-function(db_path,tb_name,file_namee){
conn<- DBI::dbConnect(RSQLite::SQLite(),db_path)
RSQLite::dbGetQuery(conn,statement=c("SELECT data FROM",tb_name,"WHERE file_name =",file_namee))
RSQLite::dbCommit(conn)
RSQLite::dbDisconnect(conn)
}
#RSQLite::dbReadTable(conn,tb_name)

INSERT FROM data WHERE file_name = 'working_data.RDA'

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
