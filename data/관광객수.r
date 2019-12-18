#
#
#
#

setwd("C:/Users/82105/Desktop/빅데이터교육/r/6-project/data")
tr <- read.csv("전체방문객.csv", header = TRUE, stringsAsFactors=FALSE)
tr

year <- c(2015:2018)

str(tr)

ggplot(tr ) +
  geom_line(aes(x = year, y = tr$총.방문자),col = 'red') +
  geom_line(aes(x = year, y = tr$내국인) , col = 'blue') +
  geom_line(aes(x = year, y = tr$중국인), col = 'green') +
  geom_line(aes(x = year, y = tr$그외.외국인)) +
  theme(legend.position = 'middle')


pie()













