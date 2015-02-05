## This script create diagram 2
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()
library(scales)

## Plotting graph
png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")
p2=plot(powerdata$Global_active_power~powerdata$DateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
print(p2)
dev.off()

