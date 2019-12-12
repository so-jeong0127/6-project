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

# ggplot(data = chn_visited_jeju,
#        aes( x = 연도,
#             y = c(0,1000000,2000000,3000000) ) )+
#   geom_line()

