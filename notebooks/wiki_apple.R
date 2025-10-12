setwd("~/data")
apple<-read.csv("apple.csv", header = T, sep = ";")
dim(apple)
str(apple)
summary(apple)
View(apple)
sugar<-apple[c(1:72), 8]
shapiro.test(apple$Sucre)
qqnorm(sugar)
qqline(sugar)

bartlett.test(apple$Sucre, apple$PROCESS)

pinklady<-read.csv("pinklady.csv", header = T, sep = ";")
dim(pinklady)
str(pinklady)
summary(pinklady)
table(pinklady$Sucre)
boxplot(pinklady$Sucre~pinklady$PROCESS, ylab = "Sugar content", main = "Sugar content according to the process")

pinklady2<-subset(pinklady, select = c(Sucre, Produit))
pinklady2
sugarlyo<-pinklady2[c(1:9), 1]
sugarconv<-pinklady2[c(10:18), 1]
wilcox.test(sugarlyo, sugarconv)

pinklady3<-subset(pinklady, select = c(Sucre, Ar_caramelise))
model<-lm(pinklady3$Sucre~pinklady3$Ar_caramelise)
plot(pinklady3)
model$coefficients
model$residuals
cor.test(pinklady3$Sucre, pinklady3$Ar_caramelise)
plot(pinklady3, xlim = c(0,10), ylim = c(0,20), xlab = "Sugar content", ylab = "caramelised flavour")
abline(model, col="red")