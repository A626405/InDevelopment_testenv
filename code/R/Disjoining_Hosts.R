clrmem(1)
py_run_file("code/Python/functions.py")
source("code/R/functions.r")
py_run_file("code/Python/extract_multithreaded.py")

load("data/internal/temp/workingdata_restored.RDA")


working_data <- working_data |>
  select(datetime,date,time,host,srcstr,service,protocol,port,long,lat,region,month,day) |>
  ungroup() |>
  nest(.by=host,.key=NULL)

clrmem(3)  
