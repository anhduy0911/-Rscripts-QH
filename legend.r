
### export to eps 
# setEPS()

postscript("legend.eps",height=1, width=12)
#### set the margin 
par(mar=c(0, 0, 0, 0) )
par(mgp = c(0, 0, 0))

#### the name, and sizes of the exported file 
# postscript("n_legend2.eps",height=3, width=15)


### define the plot area 
plot(NULL, type="n", axes=FALSE, xlab="", ylab="")

#### define the colors 
colors_border <- c('#2a16db','#a83df5','#ed82c4','#00AFBB','#FC4E07','#ed9482','#f2ce3f')



legtext <- c('Faster R-CNN', 'KGPNet v1', 'KGPNet v2', 'KGPNet v3', 'KGPNet v4', 'KGPNet v5', 'KGPNet v6')
# xcoords <- c(0.15, 0.09, 0.1, 0.1, 0.1, 0.1, 0.1)
# secondvector <- (1:length(legtext))-1
# secondvector
# textwidths <- xcoords/secondvector # this works for all but the first element
# textwidths[1] <- 0.1 # so replace element 1 with a finite number (any will do)
# textwidths <- c(0.12, 0.12, 0.12, 0.1, 0.1, 0.1, 0.1)
legend("center", legend=legtext, box.lwd = 0, bty = "n",
       pch=20, col=colors_border, horiz=TRUE, xpd=TRUE)
      
dev.off()
