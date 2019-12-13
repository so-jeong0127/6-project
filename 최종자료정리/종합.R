## 외국인 관광객 현황
library(rJava)
library(xlsx)
library(ggplot2)
library(dplyr)
setwd('D:/6-project/reference')

df <-read.csv("15-18 외국인 관광객 현황.csv",
              header = T)
ggplot(df, aes(x=연도,  y=외국인))+
  geom_line()
#####################################

## 15~18년도 내국인 방문객 수
peo <- read.csv("제주도15-18.csv")
peo
year <- 2015:2018
p <- c(peo)
p
pp <- as.vector(c(p$X2015,p$X2016, p$X2017, p$X2018));pp
df <- data.frame(year, pp)
head(df)
library(ggplot2)
ggplot(df, aes(x = year, y = pp), )+
  geom_line(col = 'red')+
  geom_point()+
  ggtitle("15년~18년 제주도 내국인 방문객수")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "darkblue"))+
  labs(x="년도", y="방문객수")+
  scale_x_continuous(breaks = c(2015,2016, 2017, 2018))
#########################################################

# 내/외국인 비교
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
###################################################

## 외부요인 외국인
library(rJava)
library(xlsx)

library(ggplot2)
library(dplyr)


setwd('D:/6-project/reference')


chn_visited_jeju <- read.csv(file = "외국인 관광객 세부 현황.csv",
                             header = T)
chn_visited_jeju

plot(chn_visited_jeju$연도, chn_visited_jeju$중국.외.국가, main = '제주 방문 외국인 관광객 수',
     type = 'l', col = 'blue',
     xlab = '년도', ylab = '제주도 방문자 수',
     ylim = c(1,3100000) )
lines(chn_visited_jeju$연도, chn_visited_jeju$중국,
      col = 'red')
############################################

# 방문객 GNI 상관비교
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
################################

# 제주 예산 현황
# install.packages('showtext')
library('showtext')
font_add_google('Noto Sans KR', 'notosanskr')
showtext_auto()


font.add.google("Gochi Hand", "gochi")
font.add.google("Schoolbell", "bell")

library(ggplot2)
library(tidyverse)
library(dplyr)

setwd("D:/6-project/임영택")
yesan <- read.csv("예산.csv", header = T)
yesan
year <- 2016:2020

par(mfrow = c(2,2))

# 1년 예산
ggplot(yesan, aes(x = year , y = yesan$총예산_억)) +
  geom_line(color = 'black') +
  ggtitle("제주도 1년 예산 (단위 : 억)")+
  theme(plot.title = element_text(size = 25, #글자사이즈
                                  face = "bold", # 글자 폰트
                                  colour = "steelblue")) + # 글자 색상
  labs( x = "년도" , y = "제주예산") +
  geom_text(aes(label = yesan$총예산_억,
                vjust = -1.1,
                hjust = 0)) +
  annotate(geom='text', x=2018, y=45000, size=13,
           label='17년 이랑 비교시 18년 예산이 13조원 증가') +
  annotate("rect", # 사각형 표시
           xmin = 2016.9,
           xmax = 2018.15,
           ymin = 36000,
           ymax = 52000,
           alpha = 0.3, # 투명도
           fill = "skyblue")

# 문화예산

ggplot(yesan, aes(x = year , y = yesan$문화및관광)) +
  geom_line(color = 'blue') +
  ggtitle("제주도 1년 문화예산 (단위 :억)")+
  theme(plot.title = element_text(size = 25, #글자사이즈
                                  face = "bold", # 글자 폰트
                                  colour = "steelblue")) + # 글자 색상
  labs( x = "년도" , y = "문화예산") +
  geom_text(aes(label = yesan$문화및관광,
                vjust = -1.1,
                hjust = 0.5)) +
  annotate(geom='text', x=2018, y=2600, size=13,
           label='17년 이랑 비교시 18년 문화예산이 3백 70억원 증가')

# 증감률

ggplot(yesan, aes(x = year , y = yesan$증감률)) +
  geom_line(color = 'red') +
  ggtitle("예산 대비 문화예산 증감률 (단위 : % )")+
  theme(plot.title = element_text(size = 25, #글자사이즈
                                  face = "bold", # 글자 폰트
                                  colour = "steelblue")) + # 글자 색상
  labs( x = "년도" , y = "제주예산") +
  geom_text(aes(label = yesan$증감률,
                vjust = -1.1,
                hjust = 0.5)) +
  annotate(geom='text', x=2018, y=6, size=13,
           label='ㅋㅋ')














