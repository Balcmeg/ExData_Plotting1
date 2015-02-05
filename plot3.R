## This script create diagram 3
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## Plotting graph
png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
p3<-plot(powerdata$Sub_metering_1~powerdata$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
p3<-p3+lines(powerdata$Sub_metering_2~powerdata$DateTime,col='Red')
p3<-p3+lines(powerdata$Sub_metering_3~powerdata$DateTime,col='Blue')
p3<-p3+legend("topright",col=c("black","red","blue"),lty=1,lwd=2,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
print(p3)
dev.off()
