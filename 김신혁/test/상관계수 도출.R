# install.packages("jsonlite")
# library(jsonlite)
# 
# install.packages("httr")
# library(httr)
# 
# # JSON포맷을 DataFrame으로 변환
# 
# df_repos <- fromJSON("http://jstp.jejutour.go.kr/openapi/service/apiservice/JejuGuestData.do?year=2016&month=8&serviceKey=TEST_SERVICE_KEY&numOfRows=10&pageNo=1")
# 
# str(df_repos)

name <- c(201609,201610,201611,201612,201701,201702,201703,201704,201705,201706,201707,201708,201709,201710,201711,201712)
china <- c(276431,272842,184371,168872,184306,180094,87669,28988,31382,33184,40825,38560,30753,32175,28329,31050)
spend <- c(20.28601,20.81411,21.11092,24.50063,24.31851,23.8021,17.40746,28.66265,29.02361,29.70323,30.27184,40.92801,41.99633,35.8428,34.11818,55.60976)

df <- data.frame(name,china,spend)
df

plot(df$china, df$spend,
     xlab = "중국인 관광객", ylab = "소비",
     col = "red", pch = 19)

# 회귀식 도출
res <- lm( df$china~df$spend, data = df ) 
res

# 회귀선
abline( res )

# 상관계수 도출 (correlation)
cor( df[ , 2:3 ] )  # 다변량 상관 계수
