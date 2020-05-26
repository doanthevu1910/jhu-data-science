#Import the hw1_data dataset

print(hw1_data)

plot(hw1_data[, "Ozone"])

view(hw1_data)

colnames(hw1_data)

summary(hw1_data)

head(hw1_data)

length(hw1_data)

#Row names
row.names(hw1_data)

#number of rows
nrow(hw1_data)

#Extract the first 2 rows
hw1_data[1:2,]

#last 2 rows
hw1_data[152:153,]
tail(hw1_data)

#value of ozone, 47th row
hw1_data[47,1]

#how many missing values of ozone
is.na(hw1_data[,"Ozone"]) -> a
sum(a)

#mean of column
mean(hw1_data[,"Ozone"], na.rm = TRUE)

#subset where ozone >31 and Temp >90
a <- c("Ozone" > 31, "Temp" > 90)
b <- hw1_data[a]
mean(b[, "Solar.R"], na.rm = TRUE)

#the mean of Temp when Month=6
hw1_data
c <- c("Month" = 6)
d <- hw1_data[c]
d
mean(d[, "Temp"], na.rm = TRUE)

c <- subset(hw1_data, "Month" = 6, select = "Temp")
mean(c[, "Temp"])

#maximum Ozone in May
d <- subset(hw1_data, "Month" = 5, select = "Ozone")
plot(d)
max(d[, "Ozone"], na.rm = TRUE)

q()
#removing NA values
x <- c(1, 2, NA, 4, NA, 5)
d <- is.na(x)
x[!d]
#or
complete.cases(x)
x[complete.cases(x)]
