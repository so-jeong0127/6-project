#
# 6조 프로젝트 #1 <외부 요인에 영향받지 않는 제주 관광 산업을 만들어 볼까!!!>
#
# 조원 : 김대현, 김신혁, 이소정, 임영택
#

## 제주도 방문객 내,외국인 비율

library(rJava)
library(xlsx)

library(ggplot2)
library(dplyr)


setwd('D:/6-project/reference')

pie <-read.csv("내,외국인 비교.csv",
               header = T)
pie[1,-1]
group <- names(pie)[-1]
group

#2016
df2016 <- data.frame( group = c("내국인", "외국인"),
                      value = c(12250259,3990826) )
ggplot(df2016, aes(x="", y=value, fill=group))+
  geom_bar(stat="identity", width = 1, color="white")+
  coord_polar("y",start=0)+
  theme_void()

#2017
df2017 <- data.frame( group = c("내국인", "외국인"),
                      value = c(13522632,1206814) )
ggplot(df2017, aes(x="", y=value, fill=group))+
  geom_bar(stat="identity", width = 1, color="white")+
  coord_polar("y",start=0)+
  theme_void()

#2018
df2018 <- data.frame( group = c("내국인", "외국인"),
                      value = c(13086129,1170127) )
ggplot(df2018, aes(x="", y=value, fill=group))+
  geom_bar(stat="identity", width = 1, color="white")+
  coord_polar("y",start=0)+
  theme_void()