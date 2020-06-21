library(readr)    # load the file
household_power_consumption2 <- read_csv("household_power_consumption2.csv")
data<- household_power_consumption2 # save it in my "data"

Sys.Date() # search what kind of date we're using
Sys.time()

date<-as.character(data$Date) # we select the first column because it contains the variable date
date1<- as.Date(date,format="%d/%m/%Y")
date2<- paste(date1,data$Time)
date3<- as.POSIXct(date2) 

Sys.Date() # search what kind of date we're using
Sys.time()

date<-as.character(data$Date) # we select the first column because it contains the variable date
date1<- as.Date(date,format="%d/%m/%Y")
date2<- paste(date1,data$Time)
date3<- as.POSIXct(date2) 

plot(date3,data$Global_active_power,type = "l", 
     ylab = "Global Active Power (Kilowatts)", xlab = "") # make the plot
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()