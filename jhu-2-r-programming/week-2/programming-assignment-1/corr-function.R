ls()

rm(list = ls())

getwd()

setwd("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-2/programming-assignment-1/specdata")

source("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-2/programming-assignment-1/complete.R")

corr <- function(a, threshold = 0) {
    
    result = numeric(0)
    
    complete_cases <- complete(a)
    
    complete_cases <- complete_cases[complete_cases[nobs >= threshold]]
    
    number_of_cases <- nrow(complete_cases)
    
    if(number_of_cases > 0) {
        
        for (a in completecases[id]) {
            
            path <- paste(sprintf("%03d", a), ".csv", sep = "") #find the directory to file
            
            data <- read.csv(path)
            
            good_data <- data[(!is.na(monitor_data$sulfate)), ]
            
            good_data[(!is.na(interested_data$nitrate)), ]
            
            sulfate_data <- good_data["sulfate"]
            
            nitrate_data <- good_data["nitrate"]
            
            result <- c(result, cor(sulfate_data, nitrate_data))
        }
        
    }
    
    print(result)
    
}

#tests
corr(1:12)