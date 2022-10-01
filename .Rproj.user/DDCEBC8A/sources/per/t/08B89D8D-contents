library(fmsb)

data <- read.csv('./data/all_model_1day.csv')
max_min <- data.frame(
  var_score_q = c(0.995, 0.71), mse_q = c(747259.0, 11412.0), mae_q = c(637.0, 72.92),
  mape_q = c(0.261, 0.02637), var_score_h = c(0.996, 0.76), mse_h = c(5173.0, 85.62),
  mae_h = c(55.7, 7.17), mape_h = c(0.2, 0.0258)
)

# paxislabels
#colnames(data) <- c('NSE_Q, MSE_Q, MAE_Q, MAPE_Q, NSE_H, MSE_H, MAE_H, MAPE_H')
# transpose of dataframe
transpose <- t(data)

# converting the result to dataframe
transpose <- as.data.frame(transpose)

# calculating reverse of dataframe
data <- rev(transpose)

# transpose of reverse dataframe
data <- t(data)

# converting the result to dataframe
data <- as.data.frame(data)

data <-rbind(max_min, data)
head(data)
colors_border=rev(c("#2a16db", "#a83df5", "#ed82c4","#00AFBB", "#FC4E07", "#ed9482"))
cairo_ps(file = "spider_1d.eps", onefile = TRUE, fallback_resolution = 600, width=5.5, height=5)
op <- par(mar = c(0, 0, 0, 0))
radarchart( data, axistype=0,
            #custom polygon
            pcol=colors_border , pfcol = scales::alpha(colors_border, 0.3) , plwd=1, plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="grey", cglwd=0.8,
            #custom labels
            vlcex=0.8,
            vlabels=c('NSE_Q', 'MSE_Q', 'MAE_Q', 'MAPE_Q', 'NSE_H', 'MSE_H', 'MAE_H', 'MAPE_H')
)
par(op)
# Legend
#legend(x=0.85, y=1, legend = c('Ensemble SSA GA', 'Ensemble SSA', 'Ensemble', 'LSTM', 'ANN', 'ARIMA'), bty = "n", pch=20 , text.col = "black", cex=0.9, pt.cex=1.6)
# legend(x=1.1, y=1, legend = c('Ensemble SSA GA', 'Ensemble SSA', 'Ensemble', 'LSTM', 'ANN', 'ARIMA'), bty = "n", pch=20 , col=colors_border , text.col = "black", cex=0.9, pt.cex=1.6)
dev.off()

max_min <- data.frame(
  var_score_q = c(0.907, 0.37), mse_q = c(1021919, 235096), mae_q = c(836, 328),
  mape_q = c(0.397, 0.136), var_score_h = c(0.89, 0.54), mse_h = c(10008.0, 2193.0),
  mae_h = c(83.5, 34.5), mape_h = c(0.391, 0.137)
)