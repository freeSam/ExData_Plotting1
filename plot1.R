data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, colClasses = "character")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02", ]
data$Global_active_power <- as.numeric(data$Global_active_power) 
png(filename = "ExData_plotting1/plot1.png", width = 480, height = 480, 
    units = "px")
hist(data1$Global_active_power, xlab = "Global Active Power (Kilowatts)", 
     main = "Global Active Power", col = "red")
dev.off()