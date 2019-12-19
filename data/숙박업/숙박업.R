setwd("C:/Users/김성현/Desktop/분석")
home <- read.csv(file = '제주특별자치도_관광숙박업현황_20190930.csv')
home
View(home)
library(dplyr)
# 제주시 관광호텔업
a <- subset(home, 순번 == '관광호텔업')
a1 <- a[1:85,]
names <- a1[,2]
addr <- a1[,3]
addr2 <- as.character(addr)

library( ggmap )
register_google( key = "AIzaSyCI9X9oeUC4C0yNUCeZuMap58Bs6vYEC5E")
gc <- geocode( enc2utf8(addr2) ) 
df <- data.frame(name = names, lon = gc$lon, lat = gc$lat)
df

map <-get_googlemap(center = "한라산", size = c(640, 640), zoom = 10, markers = gc, maptype = 'roadmap')
gmap<-ggmap(map)
gmap

# 서귀포시 관광호텔업
a2 <- a[86:127,]
names1 <- a2[,2]
addr1 <- a2[,3]
addr22 <- as.character(addr1)

gc1 <- geocode( enc2utf8(addr22) ) 
df1 <- data.frame(name = names1, lon = gc1$lon, lat = gc1$lat)
df1

map1 <-get_googlemap(center = "한라산", size = c(640, 640), zoom = 10, markers = gc1, maptype = 'roadmap')
gmap1<-ggmap(map1)
gmap1

# 제주시 가족호텔업
b <- subset(home, 순번 == "가족호텔업")
View(b)

b1 <- b[1:32,]
names3 <- b1[,2]
addr3 <- b1[,3]
addr33 <- as.character(addr3)

gc2 <- geocode( enc2utf8(addr33) ) 
df2 <- data.frame(name = names3, lon = gc2$lon, lat = gc2$lat)
df2

map2 <-get_googlemap(center = "한라산", size = c(640, 640), zoom = 10, markers = gc2, maptype = 'roadmap')
gmap2<-ggmap(map2)
gmap2

# 서귀포시 가족호텔업
b2 <- b[33:62,]
names4 <- b2[,2]
addr4 <- b2[,3]
addr44 <- as.character(addr4)

gc3 <- geocode( enc2utf8(addr44) ) 
df3 <- data.frame(name = names4, lon = gc3$lon, lat = gc3$lat)
df3

map3 <-get_googlemap(center = "한라산", size = c(660, 660), zoom = 10, markers = gc3, maptype = 'roadmap')
gmap3<-ggmap(map3)
gmap3

# 제주시 호스텔업
c <- subset(home, 순번 == "호스텔업")
View(c)

c1 <- c[1:61,]
View(c1)
names5 <- c1[,2]
addr5 <- c1[,3]
addr55 <- as.character(addr5)

gc4 <- geocode( enc2utf8(addr55) ) 
View(gc4)
df4 <- data.frame(name = names5, lon = gc4$lon, lat = gc4$lat)
df4

map4 <-get_googlemap(center = "한라산", size = c(640, 640), zoom = 10, markers = gc4, maptype = 'roadmap')
gmap4<-ggmap(map4)
gmap4

# 서귀포시 호스텔업
c2 <- c[62:164,]
View(c2)
names6 <- c2[,2]
addr6 <- c2[,3]
addr66 <- as.character(addr6)

gc5 <- geocode( enc2utf8(addr66) ) 
df5 <- data.frame(name = names6, lon = gc5$lon, lat = gc5$lat)
df5

map5 <-get_googlemap(center = "한라산", size = c(700, 700), zoom = 10, markers = gc5, maptype = 'roadmap')
gmap5<-ggmap(map5)
gmap5

# 제주시 휴양 콘도미니엄업
d <- subset(home, 순번 == "휴양 콘도미니엄업")
View(d)

d1 <- d[1:29,]
View(d1)
names7 <- d1[,2]
addr7 <- d1[,3]
addr77 <- as.character(addr7)

gc6 <- geocode( enc2utf8(addr77) ) 
df6 <- data.frame(name = names7, lon = gc6$lon, lat = gc6$lat)
df6

map6 <-get_googlemap(center = "한라산", size = c(700, 700), zoom = 10, markers = gc6, maptype = 'roadmap')
gmap6<-ggmap(map6)
gmap6