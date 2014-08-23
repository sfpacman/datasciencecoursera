corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory)
  crelation <- 0
  count <-1
  for(y in 1:332 ){
    fnum <- files_list[y]
    fname <-paste0(directory,"/", fnum)
    data <-read.csv(fname)
    good <- data[complete.cases(data) , ]
    if (sum(complete.cases(data)) > threshold){
    crelation[count] <-cor (good["nitrate"], good["sulfate"])
    count <-count +1 
    }
  }
  if(crelation == 0){ crelation <- crelation[0]}
  crelation
}