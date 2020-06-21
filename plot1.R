library(readr)    # load the file
household_power_consumption2 <- read_csv("household_power_consumption2.csv")

data<- household_power_consumption2 # save it in my "data"

hist(data$Global_active_power,col = "Red", xlab = "Global Active Power(Kilowatts)", 
     main = "Global Active Power",breaks = 15)  # make a histogram
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()