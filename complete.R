complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory)
  nobs <- length(id)
  count <-1
  for(y in id ){
    fnum <- files_list[y]
    fname <-paste0(directory,"/", fnum)
    data <-read.csv(fname)
    nobs[count] <- sum(complete.cases(data))
    count <- count + 1
  }
  data.frame(id, nobs)
}

