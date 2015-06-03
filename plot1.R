source("data.R")

plot1 <- function(persist = FALSE) {
    if(!exists("powerData")) powerData <- loadPowerData();

    #plot the results
    if(persist) png("plot1.png",width = 504, height = 504)
    hist(powerData$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
    if(persist) dev.off()
}

