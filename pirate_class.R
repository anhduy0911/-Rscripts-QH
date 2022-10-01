library("yarrr")

#sonTayDat <- read.csv('./data/Kontum-daily_modify.csv')
# sonTayDat <- read.csv('./data/SonTay.csv')
# head(sonTayDat)
big_data <- read.csv('./data/results_merged.csv')
big_data

#setEPS()
#postscript("pirate_h_st.eps",height=6.85, width=12)
cairo_ps(file = "pirate_class.eps", onefile = TRUE, fallback_resolution = 600, width=9, height=4)
df_long <- gather(big_data, key = "Model", value = "AP")
par(mar=c(5,6,0,0)+0.1,mgp=c(4,1,0))
pirateplot(formula = AP ~ Model,
           data = df_long,
           theme =1,
           pal='google',
           xlab = "Framework",
           ylab = "Average Precision (AP)",
           cex.lab=1.3, cex.axis=1.1)

dev.off()