pollutantmean <- function(directory, pollutant, id=1:332) {
  file_list <- list.files(directory, full.names=TRUE)
    tmp <- vector(mode="list", length = length(id))
  for(i in seq_along(id)){
    tmp[[i]]<-read.csv(file_list[[i+id[1]-1]])
  }
  datdat <- do.call(rbind, tmp)
  mean(datdat[,pollutant],na.rm=TRUE)
}