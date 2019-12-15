library(ggplot2)

times <- c(2010:2018)
seoul <- c(1,11,5,15,9,3,13,7,17)
busan <- c(2,4,6,8,10,12,14,16,18)
daegu <- c(25,24,22,20,18,16,17,5,20)

df1 <- data.frame(times, seoul, busan, daegu)
df1


#  다중 선 그래프 예시
ggplot(df1)+
  geom_line(aes(x=times, y=seoul))+
  geom_line(aes(x=times, y=busan))+
  geom_line(aes(x=times, y=daegu))
  

# ggplot2 단점은 동일 플롯에서 여러 y축을 가져올수 없다는 것..
# 같은 스케일에서 여러 시계열 그릴 경우 일부가 작게 나타남
# 이를 방지하려면 facet_wrap() 함수에서 scale='free' 로 인수 지정하면 됨

# 심화
ggplot(df1)+
  geom_line(aes(x=times, y=seoul, col="seoul"), linetype = 6, size = 1.2)+
  geom_line(aes(x=times, y=busan, col="busan"))+
  geom_line(aes(x=times, y=daegu, col="daegu"))+
  labs(title = "제목")+
  theme(legend.position = c(1,0), legend.justification = c(1,0))+
  geom_bar( aes(y=))

# ggplot(foreigners)+
#   geom_line(aes(x=구분, y=일본, col="일본", group = 1))+
#   geom_line(aes(x=구분, y=중국, col="중국", group = 1))+
#   geom_line(aes(x=구분, y=홍콩, col="홍콩", group = 1))+
#   geom_line(aes(x=구분, y=대만, col="대만", group = 1))+
#   geom_line(aes(x=구분, y=싱가폴, col="싱가폴", group = 1))+
#   geom_line(aes(x=구분, y=말레이시아, col="말레이시아", group = 1))+
#   geom_line(aes(x=구분, y=인도네시아, col="인도네시아", group = 1))+
#   geom_line(aes(x=구분, y=베트남, col="베트남", group = 1))+
#   geom_line(aes(x=구분, y=아시아기타, col="아시아기타", group = 1))+
#   geom_line(aes(x=구분, y=미국, col="미국", group = 1))+
#   geom_line(aes(x=구분, y=서구기타, col="서구기타", group = 1))+
#   labs(title = "15-18년 제주 외인 관광객 수")+
#   xlab("연도") + ylab("관광객 수")+
#   theme(legend.position = c(1,1), legend.justification = c(1,1))


## 15-18 월단위 외인 관광객 수
library('reshape2')

setwd('C:/Users/jinxi/OneDrive/Desktop/191215')
foreigners.month <- read.csv("제주 외인 관광 현황 월단위 2015-2018.csv", header=T)
foreigners.month

foreigners.month.df <- melt( foreigners.month[, c("구분", "일본", "중국", "홍콩", "대만",
                     "싱가폴", "말레이시아", "인도네시아", "베트남",
                     "아시아기타", "미국", "서구기타")], id = "구분")

ggplot(foreigners.month.df)+
  geom_line( aes( x = 구분, y = value, color = variable, group = variable) )+
  ggtitle("15-18년 월단위 제주 외인 관광객 수")+
  xlab("연도") + ylab("관광객 방문수")+
  theme(legend.position = c(1,1), legend.justification = c(1,1))




## 15-18 연단위 외인 관광객 수
foreigners.year <- read.csv("제주 외인 관광 현황 연단위 2015-2018.csv", header=T)
foreigners.year

foreigners.year.df <- melt( foreigners.year[, c("구분", "일본", "중국", "홍콩", "대만",
                                      "싱가폴", "말레이시아", "인도네시아", "베트남",
                                      "아시아기타", "미국", "서구기타")], id = "구분")

ggplot(foreigners.year.df)+
  geom_line( aes( x = 구분, y = value, color = variable, group = variable) )+
  ggtitle("15-18년 연단위 제주 외인 관광객 수")+
  xlab("연도") + ylab("관광객 방문수")+
  theme(legend.position = c(1,1), legend.justification = c(1,1))




## 15-18 월단위 관광객 수
trip.month <- read.csv("제주 관광객 월단위 2015-2018.csv", header = T)
trip.month


trip.month.df <- melt( trip.month[, c("구분", "한국", "일본", "중국", "홍콩", "대만",
                                      "싱가폴", "말레이시아", "인도네시아", "베트남",
                                      "아시아기타", "미국", "서구기타")], id = "구분")
trip.month.df
ggplot(trip.month.df)+
  geom_line( aes( x = 구분, y = value, color = variable, group = variable) ) +
  ggtitle("15-18년 월단위 제주 관광객 수")+
  xlab("연도") + ylab("관광객 수")
