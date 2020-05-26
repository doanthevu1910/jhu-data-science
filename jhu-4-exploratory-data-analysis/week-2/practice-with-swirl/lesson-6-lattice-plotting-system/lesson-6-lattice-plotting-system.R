library(swirl)

swirl()

head(airquality)

xyplot(Ozone ~ Wind, data = airquality)

xyplot(Ozone ~ Wind, data = airquality, col = "red", pch = 8, main = "Big Apple Data")

xyplot(Ozone ~ Wind | as.factor(Month), data = airquality, layout = c(5, 1))

xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))

p <- xyplot(Ozone ~ Wind, data = airquality)

print(p)

names(p)

mynames[myfull]

p[["formula"]]

p[["x.limits"]]

table(f)

xyplot(y ~ x | f, layout = c(2, 1))

v1

v2

myedit("plot1.R")

source(pathtofile("plot1.R"), local = TRUE)

myedit("plot2.R")

source(pathtofile("plot2.R"), local = TRUE)

str(diamonds)

table(diamonds$color)

table(diamonds$color, diamonds$cut)

myedit("myLabels.R")

source(pathtofile("myLabels.R"), local = TRUE)

xyplot(price ~ carat | color * cut, data = diamonds, strip = FALSE, pch = 20, xlab = "myxlab", ylab = "myylab", main = "mymain")

xyplot(price ~ carat | color * cut, data = diamonds, pch = 20, xlab = "myxlab", ylab = "myylab", main = "mymain")

doanthevu1910@gmail.com
MnJjXq4NvU2s3Vuy
