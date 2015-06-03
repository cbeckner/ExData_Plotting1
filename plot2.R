source("data.R")

plot2 <- function(persist = FALSE) {
    if(!exists("powerData")) powerData <- loadPowerData();

    #plot the results
    if(persist) png("plot2.png",width = 480, height = 480)
    plot(powerData$DateTime,powerData$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",xlab="")
    if(persist) dev.off()
}