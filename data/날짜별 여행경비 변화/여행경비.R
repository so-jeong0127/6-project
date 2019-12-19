setwd('D:/')

# 여행경비
pay <- read.csv("여행경비.csv")
pay

stay2 <- pay[20,2:6]
stay3 <- pay[11,2:6]
stay4 <- pay[1,2:6]

rownames(stay) <- c("2박3일","3박4일","4박5일")

stay <- rbind(stay2,stay3,stay4)
rownames(stay) <- c("2박3일","3박4일","4박5일")

# 총여행경비

#all_pay <- as.numeric(as.vector(stay$총여행경비))

#barplot(all_pay,main="총경비",xlab="여행일수",ylab="사용경비")

library(ggplot2)
ggplot(stay,aes(x=rownames(stay),y=stay$총여행경비)) +
  geom_bar(stat='identity',width = 0.7,fill="steelblue") +
  ggtitle("총경비") +
  labs(x="여행일수",y="사용경비")

# 식비

#eat_pay <- as.numeric(as.vector(stay$식비))

#barplot(eat_pay ,main="식비",xlab="여행일수",ylab="사용경비")

ggplot(stay,aes(x=rownames(stay),y=stay$식비)) +
  geom_bar(stat='identity',width = 0.7,fill="steelblue") +
  ggtitle("식비") +
  labs(x="여행일수",y="사용경비")

