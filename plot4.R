## This script create diagram 4
## Load abd read datafile
source("openfile.R")
powerdata<-openfile()

## set up table to print graphs in
png(filename = "plot4.png", width = 480, height = 480, bg = "transparent")
par(mfrow = c(2, 2))
## Plot graph in 1,1
p1<-ggplot(powerdata, aes(x=Global_active_power))
p1<-p1+geom_histogram(,binwidth=0.5,origin=0,color="black",fill="red")
p1<-p1+labs(x="Global Active Power (kilowatts)", y="Frequency")
p1<-p1+ggtitle("Global Active Power")
p1<-p1+xmax(0,6)
p1<-p1+theme(panel.grid = element_blank(),panel.background = element_blank())
p1<-p1+theme(axis.line=element_line(color="black"))
print(p1)
## Plot graph in 1,2
## Plot graph in 2,1
p3<-ggplot(powerdata, aes(x=DateTime))
p3<-p3+theme_bw()
p3<-p3+geom_line(aes(y=Sub_metering_1),color="black")
p3<-p3+geom_line(aes(y=Sub_metering_2),color="red")
p3<-p3+geom_line(aes(y=Sub_metering_3),color="blue")
p3<-p3+labs(x="",y="Energy by metering")
p3<-p3+theme(panel.grid = element_blank(),panel.background = element_blank())
p3<-p3+theme(axis.line=element_line(color="black"))
p3<-p3+scale_x_datetime(labels = date_format(Wday,"%A")
print(p3)
## Plot graph in 2.2
print(p5)
dev.off()
