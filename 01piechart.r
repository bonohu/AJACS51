png("pie1.png")
dat <- read.delim2("srabystudy.txt", header=F)
names(dat) <- c("GO", "freq")
dat <- cbind(dat, serial=seq(dim(dat)[1]))
dat2 <- dat[ dat$freq != 0, ]
pie(dat2$freq, labels=paste(dat2$GO, dat2$freq), col=rainbow(dim(dat[1])[dat2$serial]), main="SRA by Study")
dev.off()
