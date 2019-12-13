#
# 6조 프로젝트 #1 <외부 요인에 영향받지 않는 제주 관광 산업을 만들어 볼까!!!>
#
# 조원 : 김대현, 김신혁, 이소정, 임영택
#



## 외국인 관광객 세부 현황

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

