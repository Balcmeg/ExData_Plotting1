## This script create diagram 1
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## Plotting graph to file
png(filename = "plot1.png", width = 480, height = 480, bg = "transparent")
p1<-ggplot(powerdata, aes(x=Global_active_power))
p1<-p1+geom_histogram(,binwidth=0.5,origin=0,color="black",fill="red")
p1<-p1+labs(x="Global Active Power (kilowatts)", y="Frequency")
p1<-p1+ggtitle("Global Active Power")
p1<-p1+xmax(0,6)
p1<-p1+theme(panel.grid = element_blank(),panel.background = element_blank())
p1<-p1+theme(axis.line=element_line(color="black"))
print(p1)
dev.off()
