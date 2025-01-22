cachem::cache_mem(max_size=(512*1024^2),evict="fifo",max_age=1850,max_n=500000)
object.size(clrmem)



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

