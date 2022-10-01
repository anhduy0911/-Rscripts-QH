library(latex2exp)

eq_1 = function(x) {exp(x*(-0.1)) - x * (-0.1) - 1}
eq_5 = function(x) {exp(x*(-0.5)) - x * (-0.5) - 1}

# curve(eq_1, from=-50, to=50, xlab="x", ylab="y")
par(cex.lab=1.5, cex.axis=1.2, mar=c(4,6,2,2))
plot(eq_1, xlim=c(-50,50), type="l",col="red", xlab=TeX('$\\Delta'), ylab=TeX('L(c$\\Delta)'))
plot(eq_5, xlim=c(-50,50), type="l",col="blue", add=TRUE)
legend('topright', legend=c('c = -0.1', 'c = -0.5'),
        col=c("red", 'blue')
        ,lty=1:1, cex=1)
# curve(eq_5, from=-50, to=50, xlab="x", ylab="y")