rm(list = ls())

getwd()

setwd("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-2/programming-assignment-1/specdata")

complete <- function(id = 1:332){
    
    results <- data.frame(id = numeric(0), nobs = numeric(0))
    
    for (number in id) {
        
        path <- paste(sprintf("%03d", number), ".csv", sep = "") #find the directory to file
        
        data <- read.csv(path)
        
        good_data <- data[(!is.na(data["sulfate"])), ]
        
        good_data <- good_data[(!is.na(data["nitrate"])), ]
        
        nobs <- nrow(good_data)
        
        results <- rbind(results, data.frame(id = number, nobs = nobs))
    
    }
    
    results
    
}

complete(30:25)
