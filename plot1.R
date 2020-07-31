## Reading and subseting the power consumption data

file <- "./data/household_power_consumption.txt"
power <- read.table(file, header = T, sep = ";", na.strings = "?", 
                    stringsAsFactors = F)
subSetData <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

## Calling basic plotting functions

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()