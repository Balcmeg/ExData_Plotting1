## Placed the script for opening and reading the file in a separate function to reduce the clutter in the other scripts.
openfile<-function() {
      ##Clean Environments
      rm(list = ls())
      ## Download data if its not already downloaded
      if(!file.exists("./data")){dir.create("./data")}
      if(!file.exists("./data/household_power_consumption.txt")){
            dataUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
            download.file(dataUrl,destfile="./data/powerdata.zip",method="curl")
            list.files("./data")
            dateDownloaded<-date()
            dateDownloaded
            unzip("./data/powerdata.zip",exdir="./data")
      }      
      ## Load and  testdata
      powerdata<-read.csv("./data/household_power_consumption.txt", sep=";",header=TRUE, stringsAsFactors=FALSE)
      
      ## convert variables ot Numeric
      for (i in 3:9) {
            powerdata[,i]<-as.numeric(powerdata[,i])  
      }
      ## Convert to date format
      powerdata$Date<-as.Date(powerdata$Date,format="%d/%m/%Y")
      ## Subset data to keep only the dates we want to examine
      powerdata <- subset(powerdata,(Date=="2007-2-01"|Date=="2007-2-02"))
      ## Convert to time format
      powerdata$Time<-strptime(powerdata$Time,format="%H:%M:%S")
      outdata<-powerdata
}