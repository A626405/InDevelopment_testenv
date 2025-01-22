#file.create("data/internal/misc/cachelogs.log")
#cache <- cachem::cache_mem(max_size=(300*1024^2),evict="lru",max_age=1800,max_n=2050000,logfile="data/internal/misc/cachelogs.txt")
#print(cache$info())

object.size(working_data)/(1024^2)
memoise::cache_memory(algo = "md5")


create_db<-memoise::memoise(create_db,cache=cachem::cache_mem(max_size=18000))
save_db<-memoise::memoise(save_db,cache=cachem::cache_mem(max_size=18000))

object.size(create_db)
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

