library(ggplot2)
gni <- read.csv("gniaa.csv")
gni1 <- read.csv("gniaazzzz.csv")
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





yearz <- c('16년1분기','16년2분기','16년3분기','16년4분기',
           '17년1분기','17년2분기','17년3분기','17년4분기',
           '18년1분기','18년2분기','18년3분기','18년4분기')

zzz <- data.frame(yearz)
gni12 <- as.vector(gni1)
zd <- as.character(yearz)
zzz1 <- data.frame(zd,gni1)
str(zd)
str(zzz1)

ggplot(zzz1, aes(x = zzz1$zd, y = zzz1$GNI)) +
  geom_line()








