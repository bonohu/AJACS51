data <- read.table("RMA.txt", header=TRUE, row.names=1, sep="\t", quote="") 
data.pca <- prcomp(t(data))
names(data.pca)
plot(data.pca$sdev, type="h", main="PCA s.d.")
data.pca.sample <- t(data) %*% data.pca$rotation[,1:2]
plot(data.pca.sample, main="PCA")  
text(data.pca.sample, colnames(data), col = c(rep("red", 4), rep("blue",4)))
