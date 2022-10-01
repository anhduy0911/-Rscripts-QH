datassa <- read.csv('./data/SonTay_modified.csv')

datassa$date <- as.Date(datassa$date, '%d/%m/%Y')
par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(Q[300:450] ~ date[300:450], datassa, type = "l", xlab='Time (Month)', ylab=expression('Discharge (Q)'), col='chocolate', lwd=1.5)
lines(datassa$date[300:450], datassa$Q_modified[300:450], col='darkgreen', lwd=1.5)
legend( 'topright', legend=c('Raw', 'SSA processed'),
        col=c("chocolate", 'darkgreen')
        ,lty=1:1, cex=1)
# axis(1, en_ssa_ga$date, format(en_ssa_ga$date, "%b %d"), cex.axis = .7)

datassa <- read.csv('./data/SonTay_modified.csv')

datassa$date <- as.Date(datassa$date, '%d/%m/%Y')
par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(H[700:850] ~ date[700:850], datassa, type = "l", xlab='Time (Month)', ylab='Water Level (H)', col='chocolate', lwd=1.5)
lines(datassa$date[700:850], datassa$H_modified[700:850], col='darkgreen', lwd=1.5)
legend( 'topright', legend=c('Raw', 'SSA processed'),
        col=c("chocolate", 'darkgreen')
        ,lty=1:1, cex=1)