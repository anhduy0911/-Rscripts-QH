data <- read.csv('./data/ci_part.csv')
library("gplots") 
metrics <- c('NSE_Q', 'MSE_Q', 'MAE_Q', 'MAPE_Q', 'NSE_H', 'MSE_H', 'MAE_H', 'MAPE_H')
data$ci95_lo / data$mean

cairo_ps(file = "ci.eps", onefile = TRUE, fallback_resolution = 600, width=10, height=5)
plotCI(x = 1:8,               # plotrix plot with confidence intervals
       y = c(1, 1, 1, 1, 1, 1, 1, 1),
       err='y',
       li = data$ci95_lo / data$mean,
       ui = data$ci95_hi / data$mean,
       xlab = 'Metrics',
       ylab = 'Normalized CI',
       cex.lab=1.4, cex.axis=1.1,
       xaxt="n")

axis(1, at = 1:8,
     labels = metrics)

dev.off()