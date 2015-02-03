## This script create diagram 4
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## set up table to print graphs in
png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
par(mfrow = c(2, 2))
## Plot graph in 1,1
plot(powerdata$DateTime,powerdata$Global_active_power,type="l",xlab = "",ylab = "Global Active Power (kilowatts)")
## Plot graph in 1,2
plot(powerdata$DateTime,powerdata$Voltage,type="l",xlab = "datetime",ylab = "Global Active Power (kilowatts)")
## Plot graph in 2,1
plot(powerdata$DateTime,powerdata$Sub_metering_1,type="l",xlab = "",ylab = "Energy sub metering",col="black")
lines(powerdata$DateTime, powerdata$Sub_metering_2, col = "red")
lines(powerdata$DateTime, powerdata$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
## Plot graph in 2.2
plot(powerdata$DateTime,powerdata$Global_reactive_power,type="l",xlab = "datetime",ylab = "Global_reactive_power")
dev.off()
