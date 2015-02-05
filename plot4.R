## This script create diagram 4
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## set up table to print graphs in
png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
par(mfrow = c(2, 2))
## Plot graph in 1,1
hist(powerdata$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
## Plot graph in 1,2
plot(powerdata$Voltage~powerdata$DateTime, type="l",ylab="Voltage (volt)", xlab="")
## Plot graph in 2,1
p3<-plot(powerdata$Sub_metering_1~powerdata$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
p3<-p3+lines(powerdata$Sub_metering_2~powerdata$DateTime,col='Red')
p3<-p3+lines(powerdata$Sub_metering_3~powerdata$DateTime,col='Blue')
p3<-p3+legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2 ,bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Plot graph in 2.2
plot(powerdata$Global_reactive_power~powerdata$DateTime, type="l", ylab="Global Rective Power (kilowatts)",xlab="")
dev.off()
