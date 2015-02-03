## This script create diagram 1
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## Plotting graph to file
png(filename = "plot1.png", width = 480, height = 480, bg = "transparent")
hist(powerdata$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()