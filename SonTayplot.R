sonTayDat <- read.csv('./data/SonTay.csv')
head(sonTayDat)
q <- tail(sonTayDat$Q, 500)
h <- sonTayDat$H
date <- tail(sonTayDat$date, 500)

# cairo_pdf(filename = "testQ.pdf", width=7, height=5)
plot.new()
plot.window(xlim=c(as.Date('01/1/2019', '%d/%m/%Y'), as.Date('01/1/2020', '%d/%m/%Y')), ylim=c(0,15000), cex.lab=1.2, cex.axis=1.1)
axis(1)
axis(2)

# title(xlab = TeX("Thời gian (Năm)"))
# title(ylab = TeX("Lưu lượng (Q)"))

lines(as.Date(date,"%d/%m/%Y"), q, xlab='Thời gian (Năm)', type='l', ylab='Lưu lượng (Q)')

box()
# dev.off()