## This script create diagram 2
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()
library(scales)

## Plotting graph
png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")
p2<-ggplot(powerdata, aes(x=DateTime, y=Global_active_power))
p2<-p2+geom_line(color="black")
p2<-p2+labs(x="",y="Global Active Power (kilowatts)")
p2<-p2+theme(panel.grid = element_blank(),panel.background = element_blank())
p2<-p2+theme(axis.line=element_line(color="black"))
#p2<-p2+scale_x_date(labels = as.Date(powerdata$DateTime, format="%A"))
##p2<-p2+scale_x_date(labels = weekdays(powerdata$DateTime))
p2<-p2+scale_x_datetime(breaks = "1 day",labels = date_format("%A"))
print(p2)
dev.off()
