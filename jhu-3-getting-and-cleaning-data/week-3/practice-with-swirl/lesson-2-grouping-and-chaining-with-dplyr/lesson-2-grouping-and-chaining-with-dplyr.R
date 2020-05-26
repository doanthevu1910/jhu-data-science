rm(list = ls())

wd <- getwd()

setwd(paste(wd, "/", "R", "/", "coursera-getting-and-cleaning-data", "/", "week-3", "/", "practice-with-swirl", sep = ""))

library("swirl")

swirl()

Vu

1

2

library(dplyr)

tbl_df(mydf)

cran <- tbl_df(mydf)

rm("mydf")

cran

?group_by

by_package <- group_by(cran, package)

by_package

summarize(by_package, mean(size))
