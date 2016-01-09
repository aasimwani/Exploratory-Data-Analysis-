data_file <- "~/Desktop/household_power_consumption.txt"
data <- read.table(data_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetting_Data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subsetting_Data$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subsetting_Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
