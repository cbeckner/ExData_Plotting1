loadPowerData <- function() {
    #Load the SQLDF library
    if (!require("sqldf",character.only = TRUE))
    {
        install.packages("sqldf",dep=TRUE)
        if(!require("sqldf",character.only = TRUE)) stop("Package not found")
        library(sqldf)
    }
    if (!require("tidyr",character.only = TRUE))
    {
        install.packages("tidyr",dep=TRUE)
        if(!require("tidyr",character.only = TRUE)) stop("Package not found")
        library(tidyr)
    }
    #only load data from 2/1-2/2/2007
    rawdata <- read.csv.sql("data/household_power_consumption.txt",sep = ";", sql = "select * from file where Date in ('1/2/2007','2/2/2007')")
    #close the connection
    closeAllConnections()
    sqldf()

    #join the date and time columns
    data <- unite(rawdata,DateTime,Date:Time,sep=" ")
    #Convert the column to a POSIX format
    data$DateTime <- as.POSIXct(data$DateTime,format="%d/%m/%Y %T")
    #return the final data
    data
}