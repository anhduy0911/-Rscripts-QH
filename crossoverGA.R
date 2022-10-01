library(latex2exp)

r_03 <- read.delim('./data/pylot2406/C1/C1_0.3.txt', header=FALSE, sep='\n')
r_04 <- read.delim('./data/pylot2406/C1/C1_0.4.txt', header=FALSE, sep='\n')
r_05 <- read.delim('./data/pylot2406/C1/C1_0.5.txt', header=FALSE, sep='\n')
r_06 <- read.delim('./data/pylot2406/C1/C1_0.6.txt', header=FALSE, sep='\n')
r_07 <- read.delim('./data/pylot2406/C1/C1_0.7.txt', header=FALSE, sep='\n')

x <- c(1,2,3,4,5,6,7,8,9,10)

cairo_pdf(filename = "ga_crossover.pdf", width=7, height=5)
par(mar=c(4,6,2,2))
plot.new()
plot.window(xlim=c(1,10), ylim=c(min(r_05$V1),max(r_06$V1)), cex.lab=1.5, cex.axis=1.2)
axis(1,las=1, font=1)
axis(2,las=2, font=1)

title(xlab = TeX("Generation"), line=2)
title(ylab = TeX("MSE (Q)"), line=4)

lines(x, r_03$V1,col='red', type='b', pch=15, cex=1.1)
lines(x, r_04$V1, col='darkviolet', type='b', pch=16, cex=1.1)
lines(x, r_05$V1, col='darkgoldenrod', type='b', pch=17, cex=1.1)
lines(x, r_06$V1, col='darkgreen', type='b', pch=18, cex=1.1)
lines(x, r_07$V1, col='blue', type='b', pch=8, cex=1.1)


legend( 'topright', legend=c('0.3', '0.4', '0.5', '0.6', '0.7'),
        col=c("red", 'darkviolet', 'darkgoldenrod', 'darkgreen', 'blue'),
        pch=c(15, 16, 17, 18, 8)
        ,lty=1:1, cex=1)

box()
dev.off()
