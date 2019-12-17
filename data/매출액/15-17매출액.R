price <- read.csv("d:/매출액1517.csv", header = T)
View(price)
str(price)

barplot(price$X2015~price$업종, main = "2015년 업종별 매출액", xlab = "업종", ylab = "매출액", col = rainbow(7))
barplot(price$X2016~price$업종, main = "2016년 업종별 매출액", xlab = "업종", ylab = "매출액", col = rainbow(7))
barplot(price$X2017~price$업종, main = "2017년 업종별 매출액", xlab = "업종", ylab = "매출액", col = rainbow(7))


