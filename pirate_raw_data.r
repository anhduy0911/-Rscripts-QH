library("yarrr")

sonTayDat <- read.csv('./data/SonTay.csv')
head(sonTayDat)
q <- sonTayDat$Q
h <- sonTayDat$H
date <- sonTayDat$date
date_fmt <- as.POSIXct(date, format='%m/%d/%Y')
year_only <- format(date_fmt, '%Y')

par(mar=c(5,6,0,0)+0.1,mgp=c(4,1,0))
pirateplot(formula = q ~ year_only,
           data = sonTayDat,
           theme = 1,
           xlab = "Year",
           ylab = "Discharge (Q)",
           cex.lab=1.2, cex.axis=1.1)