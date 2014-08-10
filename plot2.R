data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, colClasses = "character")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02", ]
data$Global_active_power <- as.numeric(data$Global_active_power)
dates <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
png(filename = "ExData_plotting1/plot2.png", width = 480, height = 480, 
    units = "px")
plot(dates, data1$Global_active_power, type = "l", ylab = 
            "Global Active Power (Kilowatts)", xlab = "")
dev.off()