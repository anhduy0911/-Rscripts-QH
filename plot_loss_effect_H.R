linex <- read.csv('./data/loss_effect/predict_val_0.csv')
mse <- read.csv('./data/loss_effect/predict_val_0_mse.csv')

linex$date <- as.Date(linex$date, '%d/%m/%Y')
par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(real_h[130:182] ~ date[100:152], linex, type = "l", xlab='Time', ylab='Water Level (H)', col='red', lwd=1.5)
lines(linex$date[100:152], linex$ensemble_h[130:182], col='blue', lwd=1.5)
lines(linex$date[100:152], mse$ensemble_h[130:182], col='green', lwd=1.5)
legend( 'bottomleft', legend=c('Groundtruth', 'Ensemble with Linex loss', 'Ensemble with MSE loss'),
        col=c("red", 'blue', 'green')
        ,lty=1:1, cex=1)
# axis(1, en_ssa_ga$date, format(en_ssa_ga$date, "%b %d"), cex.axis = .7)