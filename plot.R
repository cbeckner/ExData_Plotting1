source("data.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

#Generate all the plots and save them to disk
message("Generating and saving plots...")

message("Plot 1")
plot1(TRUE)

message("Plot 2")
plot2(TRUE)

message("Plot 3")
plot3(TRUE)

message("Plot 4")
plot4(TRUE)

message("Done!")