com <- read.csv(file = "d:/사업체수1517.csv")
View(com)
barplot(com$X2015~com$업종, main = "2015년 사업체수", xlab = "업종", ylab = "사업체수", col = rainbow(7))
barplot(com$X2016~com$업종, main = "2016년 사업체수", xlab = "업종", ylab = "사업체수", col = rainbow(7))
barplot(com$X2017~com$업종, main = "2017년 사업체수", xlab = "업종", ylab = "사업체수", col = rainbow(7))

