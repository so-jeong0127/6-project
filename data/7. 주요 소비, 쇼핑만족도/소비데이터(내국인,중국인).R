setwd("D:/data")

# 16년도 9월~ 17년도 12월 내국인 관광객 소비데이터
sobi_k <- read.csv("내국인 관광객 소비데이터 업종별 201609-201712.csv",sep=',')
sobi_k

dt16_4 <- c(sum(sobi_k[1:4,2]),sum(sobi_k[1:4,3]),sum(sobi_k[1:4,4]),
            sum(sobi_k[1:4,5]),sum(sobi_k[1:4,6]),sum(sobi_k[1:4,7]),sum(sobi_k[1:4,8]))
dt17_1 <- c(sum(sobi_k[5:7,2]),sum(sobi_k[5:7,3]),sum(sobi_k[5:7,4]),
            sum(sobi_k[5:7,5]),sum(sobi_k[5:7,6]),sum(sobi_k[5:7,7]),sum(sobi_k[5:7,8]))
dt17_2 <- c(sum(sobi_k[8:10,2]),sum(sobi_k[8:10,3]),sum(sobi_k[8:10,4]),
            sum(sobi_k[8:10,5]),sum(sobi_k[8:10,6]),sum(sobi_k[8:10,7]),sum(sobi_k[8:10,8]))
dt17_3 <- c(sum(sobi_k[11:13,2]),sum(sobi_k[11:13,3]),sum(sobi_k[11:13,4]),
            sum(sobi_k[11:13,5]),sum(sobi_k[11:13,6]),sum(sobi_k[11:13,7]),sum(sobi_k[11:13,8]))
dt17_4 <- c(sum(sobi_k[14:16,2]),sum(sobi_k[14:16,3]),sum(sobi_k[14:16,4]),
            sum(sobi_k[14:16,5]),sum(sobi_k[14:16,6]),sum(sobi_k[14:16,7]),sum(sobi_k[14:16,8]))


names <- c("교통","문화/레져","소매","쇼핑","숙박","식음료","유흥")
df <- data.frame(names,dt16_4,dt17_1,dt17_2,dt17_3,dt17_4)
df

library(ggplot2)
library(reshape2)

sobi.df <- melt( df[, c("names","dt16_4","dt17_1","dt17_2","dt17_3","dt17_4")], id = "names")

ggplot(sobi.df)+
  geom_bar(aes(x = variable, y=value , fill = names),
           position = "fill", stat = "identity" )

# 16년도 9월~ 17년도 12월 중국인 관광객 소비데이터
sobi_c <- read.csv("중국인 관광객 소비데이터 업종별 201609-201712.csv",sep=',')
sobi_c

dt16_4 <- c(sum(sobi_c[1:4,2]),sum(sobi_c[1:4,3]),sum(sobi_c[1:4,4]),
            sum(sobi_c[1:4,5]),sum(sobi_c[1:4,6]),sum(sobi_c[1:4,7]),sum(sobi_c[1:4,8]))
dt17_1 <- c(sum(sobi_c[5:7,2]),sum(sobi_c[5:7,3]),sum(sobi_c[5:7,4]),
            sum(sobi_c[5:7,5]),sum(sobi_c[5:7,6]),sum(sobi_c[5:7,7]),sum(sobi_c[5:7,8]))
dt17_2 <- c(sum(sobi_c[8:10,2]),sum(sobi_c[8:10,3]),sum(sobi_c[8:10,4]),
            sum(sobi_c[8:10,5]),sum(sobi_c[8:10,6]),sum(sobi_c[8:10,7]),sum(sobi_c[8:10,8]))
dt17_3 <- c(sum(sobi_c[11:13,2]),sum(sobi_c[11:13,3]),sum(sobi_c[11:13,4]),
            sum(sobi_c[11:13,5]),sum(sobi_c[11:13,6]),sum(sobi_c[11:13,7]),sum(sobi_c[11:13,8]))
dt17_4 <- c(sum(sobi_c[14:16,2]),sum(sobi_c[14:16,3]),sum(sobi_c[14:16,4]),
            sum(sobi_c[14:16,5]),sum(sobi_c[14:16,6]),sum(sobi_c[14:16,7]),sum(sobi_c[14:16,8]))

df_c <- data.frame(names,dt16_4,dt17_1,dt17_2,dt17_3,dt17_4)
df_c

sobi.df <- melt( df_c[, c("names","dt16_4","dt17_1","dt17_2","dt17_3","dt17_4")], id = "names")

ggplot(sobi.df)+
  geom_bar(aes(x = variable, y=value , fill = names),
           position = "fill", stat = "identity" )
