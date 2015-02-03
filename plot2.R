## This script create diagram 2
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## Plotting graph
png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")
plot(powerdata$DateTime,powerdata$Global_active_power,type="l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()
