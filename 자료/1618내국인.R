peo <- read.csv("제주도16-18.csv")
year <- 2016:2018
p <- c(peo)
p
pp <- as.vector(c(p$X2016, p$X2017, p$X2018));pp
df <- data.frame(year, pp)
head(df)
library(ggplot2)
ggplot(df, aes(x = year, y = pp), )+
  geom_line(col = 'red')+
  geom_point()+
  ggtitle("16년~18년 제주도 내국인 방문객수")+
  theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "darkblue"))+
  labs(x="년도", y="방문객수")+
  scale_x_continuous(breaks = c(2016, 2017, 2018))















