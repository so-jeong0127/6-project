## 숙박시설만족도-국적별
library(gridExtra)
library(reshape2)
library(ggplot2)

setwd('D:/6-project/data/4. 체류기간, 숙박일수, 숙박장소, 숙박만족도/숙박시설만족도')
hotel1 <- read.csv("숙박시설만족도-국적별-시설상태.csv", header=T)
hotel2 <- read.csv("숙박시설만족도-국적별-종사원친절도.csv", header=T)
hotel3 <- read.csv("숙박시설만족도-국적별-시설이용편의성.csv", header=T)

hotel1.df <- melt( hotel1[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel2.df <- melt( hotel2[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel3.df <- melt( hotel3[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")

grid.arrange(
  ggplot(hotel1.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/국적별/시설상태")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel2.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/국적별/종사원친절도")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel3.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/국적별/시설이용편의성")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  nrow=1
)


## 숙박시설만족도-성별
library(gridExtra)
library(reshape2)
library(ggplot2)

setwd('D:/6-project/data/4. 체류기간, 숙박일수, 숙박장소, 숙박만족도/숙박시설만족도')
hotel1 <- read.csv("숙박시설만족도-성별-시설상태.csv", header=T)
hotel2 <- read.csv("숙박시설만족도-성별-종사원친절도.csv", header=T)
hotel3 <- read.csv("숙박시설만족도-성별-시설이용편의성.csv", header=T)

hotel1.df <- melt( hotel1[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel2.df <- melt( hotel2[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel3.df <- melt( hotel3[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")

grid.arrange(
  ggplot(hotel1.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
             ggtitle("숙박시설만족/성별/시설상태")+
             theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel2.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
             ggtitle("숙박시설만족/성별/종사원친절도")+
             theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel3.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
             ggtitle("숙박시설만족/성별/시설이용편의성")+
             theme(legend.title = element_blank(), legend.position = 'none'),
  nrow=1
)



## 숙박시설만족도-연령별
library(gridExtra)
library(reshape2)
library(ggplot2)

setwd('D:/6-project/data/4. 체류기간, 숙박일수, 숙박장소, 숙박만족도/숙박시설만족도')
hotel1 <- read.csv("숙박시설만족도-연령별-시설상태.csv", header=T)
hotel2 <- read.csv("숙박시설만족도-연령별-종사원친절도.csv", header=T)
hotel3 <- read.csv("숙박시설만족도-연령별-시설이용편의성.csv", header=T)

hotel1.df <- melt( hotel1[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel2.df <- melt( hotel2[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel3.df <- melt( hotel3[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")

grid.arrange(
  ggplot(hotel1.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/연령별/시설상태")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel2.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/연령별/종사원친절도")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel3.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/연령별/시설이용편의성")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  nrow=1
)


## 숙박시설만족도-여행유형별
library(gridExtra)
library(reshape2)
library(ggplot2)

setwd('D:/6-project/data/4. 체류기간, 숙박일수, 숙박장소, 숙박만족도/숙박시설만족도')
hotel1 <- read.csv("숙박시설만족도-여행유형별-시설상태.csv", header=T)
hotel2 <- read.csv("숙박시설만족도-여행유형별-종사원친절도.csv", header=T)
hotel3 <- read.csv("숙박시설만족도-여행유형별-시설이용편의성.csv", header=T)

hotel1.df <- melt( hotel1[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel2.df <- melt( hotel2[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")
hotel3.df <- melt( hotel3[, c("X","전혀그렇지않다", "그렇지않다","보통이다","그렇다","매우그렇다")], id = "X")

grid.arrange(
  ggplot(hotel1.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/여행유형별/시설상태")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel2.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/여행유형별/종사원친절도")+
    theme(legend.title = element_blank(), legend.position = 'none'),
  ggplot(hotel3.df)+
    geom_bar(aes(x = X, y=value, fill = variable),
             position = "fill", stat = "identity" )+
    ggtitle("숙박시설만족/여행유형별/시설이용편의성"),
  nrow=1
)
