en_ssa_ga <- read.csv('./data/predict_val_0_ssa_ensemble_ga.csv')
#en_ssa <- read.csv('./data2/predict_val_0_vanilla.csv')

en_ssa_ga$date <- as.Date(en_ssa_ga$date, '%d/%m/%Y')
par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(real_q[0:100] ~ date[0:100], en_ssa_ga, type = "l", xlab='Time', ylab='Discharge (Q)', col='red', lwd=1.5)
lines(en_ssa_ga$date[0:100], en_ssa_ga$ensemble_q[0:100], col='blue', lwd=1.5)
#lines(en_ssa_ga$date[0:100], en_ssa$ensemble_q[0:100], col='green', lwd=1.5)
legend( 'topleft', legend=c('Groundtruth', 'Ensemble SSA GA'),
        col=c("red", 'blue')
        ,lty=1:1, cex=1)
# axis(1, en_ssa_ga$date, format(en_ssa_ga$date, "%b %d"), cex.axis = .7)