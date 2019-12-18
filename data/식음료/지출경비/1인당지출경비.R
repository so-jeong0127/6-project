setwd('D:/6-project/data/8. 관광 경비')

pay <- read.csv("내국인_개별여행객_1인당_지출경비_20191213154946.csv")
head(pay)
str(pay)

# 식음료비_1인당 지출경비

names <- c("3만원 미만 (%)",	"3만원 이상~5만원 미만 (%)",	"5만원 이상~10만원 미만 (%)",	"10만원 이상~20만원 미만 (%)",	"20만원 이상 (%)",	"경험없음 (%)")

eat_pay <- pay[ ,c(1,2,26:32)]
eat_all <- as.matrix(eat_pay[3,3:8])
all <- as.numeric(as.vector(t(eat_all)))

all.new <- all[c(4,3,5,1,2,6)]
n_all <- names[c(4,3,5,1,2,6)]

pie(all.new,labels = n_all,col = rainbow(length(names)),main = "식음료비 사용 경비")

# 성별_1인당 지출경비

par(mfrow=c(1,2))

## 남자
eat_men <- as.matrix(eat_pay[18,3:8])
men <- as.numeric(as.vector(t(eat_men)))

m.new <- all[c(4,5,3,1,2,6)]
n_men <- names[c(4,5,3,1,2,6)]

pie(m.new,labels = n_men,col = rainbow(length(names)),main = "남성 식음료비 사용 경비")

## 여자
eat_women <- as.matrix(eat_pay[19,3:8])
women <- as.numeric(as.vector(t(eat_women)))

w.new <- all[c(4,3,5,1,2,6)]
n_women <- names[c(4,3,5,1,2,6)]

pie(w.new,labels = n_women,col = rainbow(length(names)),main = "여성 식음료비 사용 경비")

par(mfrow=c(1,1))


# 연령별_1인당 지출경비

par(mfrow=c(2,3))

## 15-20
eat_age15 <- as.matrix(eat_pay[20,3:8])
age15 <- as.numeric(as.vector(t(eat_age15)))

pay15 <- age15[c(4,3,5,2,1,6)]
npay15 <- names[c(4,3,5,2,1,6)]

pie(pay15,labels = npay15,col = rainbow(length(names)),main = "15-20세")

## 21-30
eat_age21 <- as.matrix(eat_pay[21,3:8])
age21 <- as.numeric(as.vector(t(eat_age21)))

pay21 <- age21[c(4,3,5,1,2,6)]
npay21 <- names[c(4,3,5,1,2,6)]

pie(pay21,labels = npay21,col = rainbow(length(names)),main = "21-30세")

## 31-40
eat_age31 <- as.matrix(eat_pay[22,3:8])
age31 <- as.numeric(as.vector(t(eat_age31)))

pay31 <- age31[c(4,3,5,1,2,6)]
npay31 <- names[c(4,3,5,1,2,6)]

pie(pay31,labels = npay31,col = rainbow(length(names)),main = "31-40세")

## 41-50
eat_age41 <- as.matrix(eat_pay[23,3:8])
age41 <- as.numeric(as.vector(t(eat_age41)))

pay41 <- age41[c(4,3,5,1,2,6)]
npay41 <- names[c(4,3,5,1,2,6)]

pie(pay41,labels = npay41,col = rainbow(length(names)),main = "41-50세")

## 51-60
eat_age51 <- as.matrix(eat_pay[24,3:8])
age51 <- as.numeric(as.vector(t(eat_age51)))

pay51 <- age51[c(4,5,3,1,6,2)]
npay51 <- names[c(4,5,3,1,6,2)]

pie(pay51,labels = npay51,col = rainbow(length(names)),main = "51-60세")

## 61-
eat_age61 <- as.matrix(eat_pay[25,3:8])
age61 <- as.numeric(as.vector(t(eat_age61)))

pay61 <- age61[c(4,3,5,1,2,6)]
npay61 <- names[c(4,3,5,1,2,6)]

pie(pay61,labels = npay61,col = rainbow(length(names)),main = "60-세")

par(mfrow=c(1,1))

# 방문목적별_1인당 지출경비

par(mfrow=c(1,3))

## 휴가 및 순수여행
eat_t <- as.matrix(eat_pay[26,3:8])
nt <- as.numeric(as.vector(t(eat_t)))

t_pay <- nt[c(4,3,5,1,2,6)]
ntrip <- names[c(4,3,5,1,2,6)]

pie(t_pay,labels = ntrip,col = rainbow(length(names)),main = "휴가 및 순수여행")

## 비즈니스여행
eat_b <- as.matrix(eat_pay[27,3:8])
nb <- as.numeric(as.vector(t(eat_b)))

b_pay <- nb[c(4,3,5,1,2,6)]
nbusi <- names[c(4,3,5,1,2,6)]

pie(b_pay,labels = nbusi,col = rainbow(length(names)),main = "비즈니스여행")

## 기타여행
eat_e <- as.matrix(eat_pay[28,3:8])
ne <- as.numeric(as.vector(t(eat_e)))

e_pay <- ne[c(4,5,3,1,6,2)]
nex <- names[c(4,5,3,1,6,2)]

pie(e_pay,labels = nex,col = rainbow(length(names)),main = "기타여행")

par(mfrow=c(1,1))

# 방문횟수별_1인당 지출경비

par(mfrow=c(2,2))

## 방문1회
eat_v1 <- as.matrix(eat_pay[29,3:8])
n_v1 <- as.numeric(as.vector(t(eat_v1)))

v1_pay <- n_v1[c(4,3,5,1,2,6)]
nv1 <- names[c(4,3,5,1,2,6)]

pie(v1_pay,labels = nv1,col = rainbow(length(names)),main = "1회")

## 방문2회
eat_v2 <- as.matrix(eat_pay[30,3:8])
n_v2 <- as.numeric(as.vector(t(eat_v2)))

v2_pay <- n_v2[c(4,3,5,1,2,6)]
nv2 <- names[c(4,3,5,1,2,6)]

pie(v2_pay,labels = nv2,col = rainbow(length(names)),main = "2회")

## 방문3회
eat_v3 <- as.matrix(eat_pay[31,3:8])
n_v3 <- as.numeric(as.vector(t(eat_v3)))

v3_pay <- n_v3[c(4,3,5,1,2,6)]
nv3 <- names[c(4,3,5,1,2,6)]

pie(v3_pay,labels = nv3,col = rainbow(length(names)),main = "3회")

## 방문4회이상
eat_v4 <- as.matrix(eat_pay[32,3:8])
n_v4 <- as.numeric(as.vector(t(eat_v4)))

v4_pay <- n_v4[c(4,5,3,1,2,6)]
nv4 <- names[c(4,5,3,1,2,6)]

pie(v4_pay,labels = nv4,col = rainbow(length(names)),main = "4회이상")

par(mfrow=c(1,1))
