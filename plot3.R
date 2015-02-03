## This script create diagram 3
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## Plotting graph to file
png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
plot(powerdata$DateTime,powerdata$Sub_metering_1,type="l",xlab = "",ylab = "Energy sub metering",col="black")
lines(powerdata$DateTime, powerdata$Sub_metering_2, col = "red")
lines(powerdata$DateTime, powerdata$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()
