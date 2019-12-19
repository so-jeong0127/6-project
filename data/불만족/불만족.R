setwd("d:/")
a <- read.csv("여행불만족요인-국적별.csv", header = T)
View(a)
str(a)
par(mfrow = c(2,4))
ko <- subset(a, a$X == "한국" )
ko1<-ko[,-1]
koo<-as.matrix(ko1)
barplot(koo, col = "steelblue", main = "여행별 불만족 요인", xlab = "한국", ylab = "백분율")

jp <- subset(a, a$X == '일본권')
jp1 <- jp[,-1]
jpp <- as.matrix(jp1)
barplot(jpp, col = "steelblue", main = "여행별 불만족 요인", xlab = "일본권", ylab = "백분율")

chi <- subset(a, a$X == "중국권")
chi1 <- chi[,-1]
ch <- as.matrix(chi1)
barplot(ch, col = "steelblue", main = "여행별 불만족 요인", xlab = "중국권", ylab = "백분율")

un <- subset(a, a$X == "비중국중화권")
un1 <- un[,-1]
unn <- as.matrix(un1)
barplot(unn, col = "steelblue", main = "여행별 불만족 요인", xlab = "비중국중화권", ylab = "백분율")

es <- subset(a, a$X == "동남아권")
es1 <- es[,-1]
ess <- as.matrix(es1)
barplot(ess, col = "steelblue", main = "여행별 불만족 요인", xlab = "동남아권", ylab = "백분율")

am <- subset(a, a$X == "북미권")
am1 <- am[,-1]
amm <- as.matrix(am1)
barplot(amm, col = "steelblue", main = "여행별 불만족 요인", xlab = "북미권", ylab = "백분율")

etc <- subset(a, a$X == "기타")
etc1 <- etc[,-1]
etcc <- as.matrix(etc1)
barplot(etcc, col = "steelblue", main = "여행별 불만족 요인", xlab = "기타", ylab = "백분율")


