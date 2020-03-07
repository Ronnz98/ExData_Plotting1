myDataFile <- "household_power_consumption.txt"
data <- read.table(myDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
myPlot2 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot2
datetime <- strptime(paste(myPlot2$Date, myPlot2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(myPlot2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()




