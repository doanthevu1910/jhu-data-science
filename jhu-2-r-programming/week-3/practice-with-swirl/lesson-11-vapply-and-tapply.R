#lesson-11-vapply-and-tapply

rm(list = ls())

getwd()

setwd("C:/Users/doant/OneDrive/Documents/R/coursera-r-programming/week-3/practice-with-swirl")

library(swirl)

swirl()

Vu

1

11

sapply(flags, unique)

vapply(flags, unique, numeric(1))

ok()

sapply(flags, class)

vapply(flags, class, character(1))

?tapply

table(flags$landmass)

table(flags$animate)

tapply(flags$animate, flags$landmass, mean)

tapply(flags$population, flags$red, summary)

5

tapply(flags$population, flags$landmass, summary)

5

1

doanthevu1910@gmail.com

x2cdCSndI4UhtDO3

q()

2

