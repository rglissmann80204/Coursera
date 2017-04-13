complete <- function(directory, id = 1:332){
  files_list <- list.files(directory, full.names = TRUE)
  russ <- function(x){
  temp_data <- read.csv(file_list[x])
  no.comp <- length(complete.cases(temp_data))
  temp <- data.frame(ids=x, nobs=no.comp)
  return(temp)
  }

unlist(lapply(id,function(x) russ(x)))
}

