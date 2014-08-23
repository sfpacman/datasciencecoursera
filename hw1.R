pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  setwd(directory)
  f <- 0
  for(y in id ){
  	if(y<10){
    		fname <-paste0("00",y,".csv")}
   	if(y<100 && y>9) {fname <-paste0("0",y,".csv")}
    if (y>100){ fname <-paste0(y,".csv")}
  	data <-read.csv(fname)
 	 bad <- is.na(data[pollutant])
   	reading <- data[pollutant]
   	r <- reading[!bad]
    View(r)
  	f <- c(f,r)
    
  }
  mean(f[-1])
  
}
