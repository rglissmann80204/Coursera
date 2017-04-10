complete <- function(directory, id = 1:332){
  files_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  comp_dat <- data.frame()
  for(i in id){
    temp_dat <- data.frame()
    len_temp_date <- data.frame()
    dat <- rbind(dat, read.csv(files_list[i]))
    temp_dat <- dat[,complete.cases(dat)]
    len_temp_dat <- c(ID = id, nobs = length(temp_dat$ID))
    print(len_temp_dat)
    comp_dat <- rbind(comp_dat, len_temp_dat)
  }
  str(temp_dat)
}