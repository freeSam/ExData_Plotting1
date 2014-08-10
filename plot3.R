data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, colClasses = "character")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02", ]
data$Global_active_power <- as.numeric(data$Global_active_power)
dates <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
png(filename = "ExData_plotting1/plot3.png", width = 480, height = 480, 
    units = "px")
plot(dates, data1$Sub_metering_1, type = "l", ylab = "Energy sub metering", 
     xlab = "", col = "black")
lines(dates, data1$Sub_metering_2, col = "red")
lines(dates, data1$Sub_metering_3, col = "blue")
legend("topright", legend = c("sub_metering_1", "sub_metering_2", 
                              "sub_metering_3"), lty = c(1,1,1), col = 
              c("black", "red", "blue"))
dev.off()