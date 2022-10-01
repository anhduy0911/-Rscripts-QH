library(corrplot)


data_frcnn <- read.csv('./data/confusion_mat_frcnn.csv', row.names = 1)
data_kgpnet <- read.csv('./data/confusion_mat_kgp.csv', row.names = 1)

data_frcnn <- t(apply(data_frcnn, 1, function(x)(x/sum(x))))
head(data_frcnn[,1:5])

# data_kgpnet <- t(apply(data_kgpnet, 1, function(x)(x/sum(x))))
# head(data_kgpnet[,1:5])

col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
# corrplot(data_frcnn, method="color", col=col(200),  
#          type="upper", order="hclust", 
#          addCoef.col = "black", # Add coefficient of correlation
#          tl.col="black", tl.srt=45, #Text label color and rotation
#          # Combine with significance
#          # p.mat = p.mat, sig.level = 0.01, insig = "blank", 
#          # hide correlation coefficient on the principal diagonal
#          diag=FALSE 
# )
cairo_ps(file = "corr_frcnn.eps", onefile = TRUE, fallback_resolution = 600, width=9, height=7.5)
library(RColorBrewer)
par(mar=c(0,0,0,0))
corrplot(data_frcnn[1:96,1:96], type="full", order="hclust", is.corr = FALSE,
        tl.col="black", tl.srt=45, tl.cex = 0.35, #Text label color and rotation
        p.mat = 1- data_frcnn[1:96,1:96], sig.level = 0.99, insig = "blank", mar = c(0, 0, 0, 0),
         col=brewer.pal(n=8, name="RdBu"))
dev.off()

# cairo_ps(file = "corr_kpn.eps", onefile = TRUE, fallback_resolution = 600, width=9, height=7.5)
# library(RColorBrewer)
# par(mar=c(0,0,0,0))
# corrplot(data_kgpnet[1:96,1:96], type="full", order="hclust", is.corr = FALSE,
#          tl.col="black", tl.srt=45, tl.cex = 0.35, #Text label color and rotation
#          p.mat = 1- data_kgpnet[1:96,1:96], sig.level = 0.99, insig = "blank", mar = c(0, 0, 0, 0),
#          col=brewer.pal(n=8, name="RdBu"))
# dev.off()