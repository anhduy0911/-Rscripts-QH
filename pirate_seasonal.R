library("yarrr")

#sonTayDat <- read.csv('./data/Kontum-daily_modify.csv')
sonTayDat <- read.csv('./data/SonTay.csv')
head(sonTayDat)
q <- sonTayDat$Q
h <- sonTayDat$H
#q <- sonTayDat$discharge
#q_thres <- q[q < 2000]
#h <- sonTayDat$water_level
date <- sonTayDat$date
#date <- date[q < 2000]
date_fmt <- as.POSIXct(date, format='%d/%m/%Y')
#date_fmt <- as.POSIXct(date, format='%Y-%m-%d')
month_only <- format(date_fmt, '%m')

#setEPS()
#postscript("pirate_h_st.eps",height=6.85, width=12)
cairo_ps(file = "pirate_h_st.eps", onefile = TRUE, fallback_resolution = 600, width=7, height=5)

par(mar=c(5,6,0,0)+0.1,mgp=c(4,1,0))
pirateplot(formula = h ~ month_only,
           data = sonTayDat,
           theme = 1,
           xlab = "Month",
           ylab = "Water Level (H)",
           cex.lab=1.3, cex.axis=1.1)

dev.off()