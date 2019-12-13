gni <- read.csv("gniaa.csv")
peo <- read.csv("제주1.csv")

p <- c(peo)
g <- c(gni)

visitor<-as.numeric(p)

GNI <- as.numeric(g)


pg <- data.frame(visitor, GNI)
pg
cor(pg)
plot(GNI~visitor, data = pg, main = "방문자수와 GNI 상관관계")
res <- lm(GNI~visitor, data = pg)
res
abline(res, col = 'red')
