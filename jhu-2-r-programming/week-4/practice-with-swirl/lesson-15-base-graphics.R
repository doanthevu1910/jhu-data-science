setwd(paste(getwd(), "/", "R", "/", "coursera-r-programming", "/", "week-4", "/", "practice-with-swirl", sep = ""))

getwd()

library("swirl")

swirl()

Vu

1

15

data(cars)

?cars

head(cars)

plot(cars)

?plot

plot(x = cars$speed, y = cars$dist)

plot(x = cars$dist, y = cars$speed)

plot(x = cars$speed, y = cars$dist, xlab = "Speed")

plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance")

plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")

plot(cars, main = "My Plot")

args(plot)

?plot

plot(cars, sub = "My Plot Subtitle")

plot(cars, col = 2)

plot(cars, xlim = c(10, 15))

plot(cars, pch = 2)

data(mtcars)

data("lynx")

?boxplot

boxplot(formula = mpg ~ cyl, data = mtcars)

hist(mtcars$mpg)

2

doanthevu1910@gmail.com

AZUPDZAK4M672aRK

0
