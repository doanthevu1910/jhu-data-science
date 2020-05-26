x <- as.Date("1970-01-01")
x

weekdays(x)
months(x)
quarters(x)

x <- Sys.time()
x

p <- as.POSIXlt(x)

p

names(unclass(p))

p$sec

datestring <- c("September 6, 2018 00:40", "May 14, 2019 12:00")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

