source("data.R")
source("plot2.R")
source("plot3.R")
plot4 <- function(persist = FALSE) {
    if(!exists("powerData")) powerData <- loadPowerData();

    #plot the results
    if(persist) png("plot4.png",width = 480, height = 480, bg="transparent")
    #set the grid
    par(mfrow=c(2,2))
    plot2()
    plot(powerData$DateTime,powerData$Voltage, type="l",xlab="",ylab="Voltage")
    plot3()
    plot(powerData$DateTime,powerData$Global_reactive_power, type="l",xlab="datetime",ylab="Global_reactive_power")

    if(persist) dev.off()

    #reset par
    par(mfrow=c(1,1))
}