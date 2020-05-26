ls()

rm(list = ls(all.names = TRUE))

directory <- 1

read.csv("specdata/001.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    path <- paste("specdata", "/", sprintf("%03d", id), ".csv", sep = "")
    
    data <- read.csv(path)    
    
    pollutant_data <- data[pollutant]
    
    pollutant_data_correct <- pollutant_data[!is.na(pollutant_data)]
    
    mean(pollutant_data_correct)
}

directory <- 1

id <- 1

pollutantmean(1, "sulfate", id = 1)

