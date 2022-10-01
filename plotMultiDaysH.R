library(latex2exp)

arima <- read.csv('./data/7_error_arima.csv')
lstm <- read.csv('./data/7_error_lstm.csv')
ann <- read.csv('./data/7_error_ann.csv')
en_ssa <- read.csv('./data2/7_error_ensemble_ssa_mse.csv')
en_ssa_ga <- read.csv('./data2/7_error_ensemble_ssa_linex.csv')
en_nossa <- read.csv('./data/7_error_ensemble.csv')

x <- c(0,1,2,3,4,5,6)

plot.new()
plot.window(xlim=c(0,6), ylim=c(0,17000), cex.lab=1.2, cex.axis=1.1)
axis(1)
axis(2)

title(xlab = TeX("Water Level (H)"))
title(ylab = TeX("MSE Score"))

lines(x, lstm$mse_h,col='red', type='b', pch=4)
lines(x, arima$mse_h, col='green', type='b', pch=19)
lines(x, ann$mse_h, col='gold', type='b', pch=20)
lines(x, en_ssa$mse_h, col='darkviolet', type='b', pch=22)
lines(x, en_ssa_ga$mse_h, col='blue', type='b', pch=18)
lines(x, en_nossa$mse_h, col='coral4', type='b', pch=21)

legend( 'topleft', legend=c('LSTM', 'Arima', 'ANN', 'Ensemble SSA', 'Ensemble SSA Linex', 'Ensemble'),
        col=c("red", 'green', 'gold', 'darkviolet', 'blue', 'coral4'),
        pch=c(4,19,20,22,18,21)
        ,lty=1:1, cex=0.8)

box()
