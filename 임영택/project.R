#
# 6조 프로젝트
# 임영택
#

#library(tidyverse)
#library(showtext) # 글꼴, install.packages("showtext")
#library(extrafont)
#font_import(pattern = "D2")
#font_import(pattern = "Nanum")
#loadfonts()
#font_add("NanumBarunGothic", "NanumBarunGothic.ttf")

install.packages('showtext')
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
ggplot(yesan, aes(x = year , y = yesan$총예산_10만)) +
  geom_line(color = 'black') +
  ggtitle("제주도 1년 예산 (단위 :십만)")+
  theme(plot.title = element_text(size = 25, #글자사이즈
                                  face = "bold", # 글자 폰트
                                  colour = "steelblue")) + # 글자 색상
  labs( x = "년도" , y = "제주예산") +
  geom_text(aes(label = yesan$총예산_10만,
                vjust = -1.1,
                hjust = 0)) +
  annotate(geom='text', x=2018, y=4500, size=13,
           label='17년 이랑 비교시 18년 예산이 13억이 오름')

# 문화예산

ggplot(yesan, aes(x = year , y = yesan$문화및관광)) +
  geom_line(color = 'blue') +
  ggtitle("제주도 1년 문화예산 (단위 :십만)")+
  theme(plot.title = element_text(size = 25, #글자사이즈
                                  face = "bold", # 글자 폰트
                                  colour = "steelblue")) + # 글자 색상
  labs( x = "년도" , y = "문화예산") +
  geom_text(aes(label = yesan$문화및관광,
                vjust = -1.1,
                hjust = 0.5)) +
  annotate(geom='text', x=2018, y=260, size=13,
           label='17년 이랑 비교시 18년 문화예산이 3천7백만원 오름')

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
  



