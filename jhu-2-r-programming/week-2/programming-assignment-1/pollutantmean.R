rm(list = ls())

getwd()

setwd("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-2/programming-assignment-1/specdata")

pollutantmean <- function(pollutant, id = 1:332) {
    
    monitors <- c()
    
    for (a in id) {
        
        path <- paste(sprintf("%03d", a), ".csv", sep = "") #find the directory to file
        
        data <- read.csv(path)    #import the .csv file
        
        pollutant_data <- data[pollutant] #get the data
        
        pollutant_data_correct <- pollutant_data[!is.na(pollutant_data)] #remove NA values
        
        monitors <- c(monitors, pollutant_data_correct) #create the monitor in the loop
        
    }
    
    mean(monitors) #calculate the mean
    
} 

#tests

#1
pollutantmean("sulfate", 1:10)

#2
pollutantmean("nitrate", 70:72)

#3
pollutantmean("sulfate", 34)

#4
pollutantmean("nitrate")

