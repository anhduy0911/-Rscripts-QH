library(latex2exp)

p_50 <- read.delim('./data/GA_sizeP/SizeP_50.txt', header=FALSE, sep='\n')
p_100 <- read.delim('./data/GA_sizeP/SizeP_100.txt', header=FALSE, sep='\n')
p_150 <- read.delim('./data/GA_sizeP/SizeP_150.txt', header=FALSE, sep='\n')

x <- c(1,2,3,4,5,6,7,8,9,10)

cairo_pdf(filename = "ga_sizep.pdf", width=7, height=5)
par(mar=c(4,6,2,2))
plot.new()
plot.window(xlim=c(1,10), ylim=c(min(p_100$V1),max(p_100$V1)), cex.lab=1.5, cex.axis=1.2)
axis(1,las=1, font=1)
axis(2,las=2, font=1)

title(xlab = TeX("Generation"), line=2)
title(ylab = TeX("MSE (Q)"), line=4)

lines(x, p_50$V1,col='red', type='b', pch=18, cex=1.5)
lines(x, p_100$V1, col='darkviolet', type='b', pch=17, cex=1.2)
lines(x, p_150$V1, col='blue', type='b', pch=19, cex=1.2)
# lines(x, en_ssa$var_score_q, col='darkviolet', type='b', pch=21)
# lines(x, en_nossa$var_score_q, col='coral', type='b', pch=22)

legend( 'bottomleft', legend=c('50', '100', '150'),
        col=c("red", 'darkviolet', 'blue'),
        pch=c(18, 17, 19)
        ,lty=1:2, cex=1)

box()
dev.off()
