#
# 6조 프로젝트 #1 <외부 요인에 영향받지 않는 제주 관광 산업을 만들어 볼까!!!>
#
# 조원 : 김대현, 김신혁, 이소정, 임영택
#


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