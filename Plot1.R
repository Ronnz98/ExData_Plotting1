myDataFile <- "household_power_consumption.txt"
data <- read.table(myDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
myPlot1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot1
globalActivePower <- as.numeric(myPlot1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()