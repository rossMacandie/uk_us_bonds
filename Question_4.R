setwd("Econometrics")
getwd()
##Import data set
Bonds <- read.csv("Bonds.csv")
## Install packages 
install.packages("xts")
install.packages("tseries")

##Convert variables into a number rather than a character
Bonds$UKValue <- as.numeric(as.character(Bonds$UKValue))
Bonds$USValue <- as.numeric(as.character(Bonds$USValue))

##Create time series plots
library(xts)
bonddataUK <- ts(Bonds$UKValue, start = c(2000,1), frequency = 4)
bonddataUS <- ts(Bonds$USValue, start = c(2000,1), frequency = 4)
bonddataUK <- as.xts(bonddataUK)
bonddataUS <- as.xts(bonddataUS)


##Plot a time series for the data to visually assess stationarity 
plot(bonddataUK, main = "Yield for 10 USA and UK year bonds ",ylab="Yield (%)", xlab="Time (Quarterly)", col = "blue")
lines(bonddataUS, col = "red")
legend(0,0,legend=c("UK","USA"),col =c("blue","red"))
