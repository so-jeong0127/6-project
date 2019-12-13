#
# 6조 프로젝트 #1 <외부 요인에 영향받지 않는 제주 관광 산업을 만들어 볼까!!!>
#
# 조원 : 김대현, 김신혁, 이소정, 임영택
#


# 1. 관광객 유입
#   1.1 전국적 관광 현황 파악

#   1.2 제주도 관광 출입자 현황 파악
#     1.2.1 내국인 데이터

library(rJava)
library(xlsx)

library(ggplot2)
library(dplyr)


setwd('D:/6-project/reference')

chn_visited_jeju <- read.csv(file = "제주도 외국인 관광객 현황 2013-2018 line.csv",
                     header = T)
chn_visited_jeju

plot(chn_visited_jeju$연도, chn_visited_jeju$중국.외.국가, main = '제주 방문 외국인 관광객 수',
     type = 'l', col = 'blue',
     xlab = '년도', ylab = '제주도 방문자 수',
     ylim = c(1,3100000) )
lines(chn_visited_jeju$연도, chn_visited_jeju$중국,
      col = 'red')





pie <-read.csv("내,외국인 비교.csv",
               header = T)
pie[1,-1]
group <- names(pie)[-1]
group

df2016 <- data.frame( group = c("내국인", "외국인"),
                  value = c(12250259,3990826) )

ggplot(df2016, aes(x="", y=value, fill=group))+
  geom_bar(stat="identity", width = 1, color="white")+
  coord_polar("y",start=0)+
  theme_void()


df2017 <- data.frame( group = c("내국인", "외국인"),
                      value = c(13522632,1206814) )

ggplot(df2017, aes(x="", y=value, fill=group))+
  geom_bar(stat="identity", width = 1, color="white")+
  coord_polar("y",start=0)+
  theme_void()







