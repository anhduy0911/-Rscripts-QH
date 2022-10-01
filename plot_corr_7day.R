en_ssa_ga <- read.csv('./data/predict_val_3_ssa_ensemble_ga.csv')
#en_ssa <- read.csv('./data2/predict_val_0_vanilla.csv')
max_gt <- max(en_ssa_ga$real_q)
min_gt <- min(en_ssa_ga$real_q)
max_gt
en_ssa_ga$date <- as.Date(en_ssa_ga$date, '%d/%m/%Y')


par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(real_q ~ ensemble_q, en_ssa_ga, type = "p", xlab='Groundtruth (Q)', ylab='Predict Value (Q)', col='red', lwd=1.5)

#ten_error_pos <- en_ssa_ga$real_q * 1.2
#ten_error_neg <- en_ssa_ga$real_q * 0.8
lines(c(min_gt, max_gt), c(min_gt, max_gt), col='black', lwd=1.5)

# margin
text(5000, 11500, '+100%')
#lines(en_ssa_ga$real_q, ten_error_pos, col='black', lwd=1.5)
lines(c(min_gt, max_gt), c(min_gt * 2, max_gt * 2), col='black', lty = "dashed", lwd=1.5)
text(6000, 2700, '-40%')
#lines(en_ssa_ga$real_q, ten_error_neg, col='black', lwd=1.5)
lines(c(min_gt, max_gt), c(min_gt * 0.6, max_gt * 0.6), col='black', lty = "dashed", lwd=1.5)
#lines(en_ssa_ga$date[0:100], en_ssa$ensemble_q[0:100], col='green', lwd=1.5)
#legend( 'topleft', legend=c('Groundtruth', 'Ensemble SSA GA'),
#        col=c("red", 'blue')
#        ,lty=1:1, cex=1)
# axis(1, en_ssa_ga$date, format(en_ssa_ga$date, "%b %d"), cex.axis = .7)