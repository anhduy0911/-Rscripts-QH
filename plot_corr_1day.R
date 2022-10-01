library(lubridate)
en_ssa_ga <- read.csv('./data/predict_val_0_ssa_ensemble_ga.csv')
#en_ssa <- read.csv('./data2/predict_val_0_vanilla.csv')
max_gt <- max(en_ssa_ga$real_q)
min_gt <- min(en_ssa_ga$real_q)

en_ssa_ga$date <- as.Date(en_ssa_ga$date, '%d/%m/%Y')
month_only <- month(en_ssa_ga$date)

cairo_ps(file = "corr_1day.eps", onefile = TRUE, fallback_resolution = 600, width=12, height=14)
par(cex.lab=1.4, cex.axis=1.1, mar=c(4,6,2,1.5))
par(mfrow=c(4,3))

for (i in 1:12)
{
  # print(i)
  # print(en_ssa_ga$real_q[month_only == i])
  plot(en_ssa_ga$real_q[month_only == i], en_ssa_ga$ensemble_q[month_only == i], type = "p",
       xlim=c(0,8000), ylim=c(0,8000),
       xaxs="i", yaxs="i",
      xlab=paste('Groundtruth - ', month.abb[i]), ylab=paste('Predict Value - ', month.abb[i]), col='red', lwd=1.5)
  idx <- idx + 1
  #par(mar = c(0, 0, 0, 0))
  #ten_error_pos <- en_ssa_ga$real_q * 1.2
  #ten_error_neg <- en_ssa_ga$real_q * 0.8
  lines(c(0, max_gt), c(0, max_gt), col='black', lwd=1.5)
  # margin
  text(4700, 6500, '+20%')
  #lines(en_ssa_ga$real_q, ten_error_pos, col='black', lwd=1.5)
  lines(c(0, max_gt), c(0 * 1.2, max_gt * 1.2), col='black', lty = "dashed", lwd=1.5)
  text(6000, 4150, '-20%')
  #lines(en_ssa_ga$real_q, ten_error_neg, col='black', lwd=1.5)
  lines(c(0, max_gt), c(0 * 0.8, max_gt * 0.8), col='black', lty = "dashed", lwd=1.5)
}

dev.off()