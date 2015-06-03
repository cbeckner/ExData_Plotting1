source("data.R")

plot3 <- function(persist = FALSE) {
    if(!exists("powerData")) powerData <- loadPowerData();

    #plot the results
    if(persist) png("plot3.png",width = 504, height = 504)
    plot(powerData$DateTime,powerData$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
    lines(powerData$DateTime,powerData$Sub_metering_2,col="red")
    lines(powerData$DateTime,powerData$Sub_metering_3,col="blue")
    legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=1:3, pch=c(NA,NA,NA),lwd=1)
    if(persist) dev.off()
}