sonTayDat <- read.csv('./data/SonTay.csv')
head(sonTayDat)
q <- sonTayDat$Q
h <- sonTayDat$H
date <- sonTayDat$date

cairo_pdf(filename = "test.pdf", width=7, height=5)
plot.new()
plot.window(xlim=c(as.Date('01/1/2008', '%d/%m/%Y'), as.Date('01/1/2020', '%d/%m/%Y')), ylim=c(0,1500), cex.lab=1.2, cex.axis=1.1)
axis(1)
axis(2)
title(xlab = TeX("Thời gian (Năm)"))
title(ylab = TeX("Mực nước (H)"))

lines(as.Date(date,"%d/%m/%Y"), h, type='l')

box()
dev.off()