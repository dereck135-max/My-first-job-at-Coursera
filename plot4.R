library(readr)    # load the file
household_power_consumption2 <- read_csv("household_power_consumption2.csv")
 
data<- household_power_consumption2 # save it in my "data"
date<-as.character(data$Date) # we select the first column because it contains the variable date
date1<- as.Date(date,format="%d/%m/%Y")
date2<- paste(date1,data$Time)
date3<- as.POSIXct(date2) 
i<-c(1,2,3)

par(mfrow=c(2,2)) # make the plot
plot(date3,data$Global_active_power,type = "l", 
     ylab = "Global Active Power", xlab = "")
plot(date3,data$Voltage,xlab = "datetime", ylab = "Voltage", type = "l")
plot(date3,data$Sub_metering_1,col="black",type = "n", xlab = "", ylab = "Energy sub meterning")
lines(date3,data$Sub_metering_1,col="black")
lines(date3,data$Sub_metering_2,col="red")
lines(date3,data$Sub_metering_3,col="blue")
legend("topright",lty = 1,col = c("black","red","blue"),
       legend = c(paste("Sub_metering_",i)),cex = 0.4, bty = "n",x.intersp =0.1 ,y.intersp = 0.2)
plot(date3,data$Global_reactive_power,ylab = "Global_reactive_power",xlab = "datetime",type = "l")
dev.copy(png,file="plot4.png",width = 480, height = 480)
dev.off()