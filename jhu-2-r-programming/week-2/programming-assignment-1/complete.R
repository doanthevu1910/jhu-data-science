rm(list = ls())

getwd()

setwd("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-2/programming-assignment-1/specdata")

complete <- function(id = 1:332){
    
    results <- data.frame(id = numeric(0), nobs = numeric(0))
    
    for (a in id) {
        
        path <- paste(sprintf("%03d", a), ".csv", sep = "") #find the directory to file
        
        data <- read.csv(path) #get the file
        
        good_data <- data[(!is.na(data["sulfate"])), ] #find the data
        
        good_data <- good_data[(!is.na(good_data["nitrate"])), ] #find the data
        
        nobs <- nrow(good_data) #count the number 
        
        results <- rbind(results, data.frame(id = a, nobs = nobs)) #creating the data frame
        
    }
    
    results
    
}

#test
complete(30:25)

complete(3)

#5
cc <- complete(c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)

#6
cc <- complete(54)
print(cc$nobs)

#7
set.seed(42)
cc <- complete(332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
