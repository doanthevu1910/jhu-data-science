#getting and cleaning data

getwd()

power_data <- read.table("C:/Users/doant/OneDrive/Documents/R/coursera-exploratory-data-analysis/week-1/course-project-1/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

head(power_data, n = 10)

names(power_data)

power_data$Date <- as.Date(power_data$Date, "%d/%m/%Y")

power_data <- subset(power_data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

power_data <- power_data[complete.cases(power_data), ]

dateTime <- paste(power_data$Date, power_data$Time)

dateTime <- setNames(dateTime, "DateTime")

power_data <- power_data[, !(names(power_data) %in% c("Date", "Time"))]

power_data <- cbind(dateTime, power_data)

power_data$dateTime <- as.POSIXct(dateTime)

# plot 1

hist(power_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Frequency", ylab = "Global Active Power (kilowatts)")

#plot 2

plot(power_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

#plot 3

#draft
plot(power_data$Sub_metering_1 ~ power_data$dateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

lines(power_data$Sub_metering_1 ~ power_data$dateTime, col = "red")

with(power_data, {
    plot(Sub_metering_1 ~ dateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    
    lines(Sub_metering_2 ~ dateTime, col = "red")
    
    lines(Sub_metering_3 ~ dateTime, col = "blue")
})

legend("topright", col = c("black", "red", "blue"), lwd = c(1, 1, 1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 4

par(mfrow = c(2, 2))

with(power_data, {
    plot(Global_active_power ~ dateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    
    plot(Voltage ~ dateTime, type = "l", xlab = "", ylab = "Voltage (volt)")
    
    plot(Sub_metering_1 ~ dateTime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    
    lines(Sub_metering_2 ~ dateTime, col = "red")
    
    lines(Sub_metering_3 ~ dateTime, col = "blue")
    
    legend("topright", col = c("black", "red", "blue"), lwd = c(1, 1, 1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    plot(Global_reactive_power ~ dateTime, type = "l", xlab = "", ylab = "Global Rective Power (kilowatts)")
})

