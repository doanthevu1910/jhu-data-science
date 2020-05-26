library(swirl)

install_from_swirl("Getting and Cleaning Data")

swirl()

Vu

1

0

head(cars, nrow = 10)

args(head)

?head

head(cars, n = 10)

library(jsonlite)
jsonData <- fromJSON(https://dadada.com/)
names(jsonData) 

names(jsonData$owner)
jsonData$owner$login

myjson <- toJSON(iris, pretty = TRUE)
cat(myjson) 

iris2 <- fromJSON(myjson)
head(iris2) 

0
