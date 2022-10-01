sonTayDat <- read.csv('./data/Kontum-daily_modify.csv')
head(sonTayDat)
q <- sonTayDat$discharge
sonTayDat$discharge[q > 2000] <- 2000
h <- sonTayDat$water_level
date <- sonTayDat$date

cairo_ps(file = "KT_q.eps", onefile = TRUE, fallback_resolution = 600, width=8, height=4)
# cairo_ps(file = "KT_h.eps", onefile = TRUE, fallback_resolution = 600, width=8, height=4)
sonTayDat$date <- as.Date(sonTayDat$date, '%Y-%m-%d')
par(cex.lab=1.3, cex.axis=1.2, mar=c(4,5,1,0))
plot(discharge ~ date, sonTayDat, type = "l", xlab='Time (Year)', ylab='Discharge (Q)', lwd=1.5)
# plot(water_level ~ date, sonTayDat, type = "l", xlab='Time (Year)', ylab='Water Level (H)', lwd=1.5)
#axis(1)
#axis(2)
#title(xlab = "Time (Year)")
#title(ylab = "Discharge (Q)")

#lines(as.Date(date,'%Y-%m-%d'), q, type='l')

box()
dev.off()