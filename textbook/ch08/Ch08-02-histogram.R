### chapter 08 기본 그래프 작성하기 I

# 2. 히스토그램 LAB
install.packages('Stat2Data')
library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

# 구간을 9개로 나눈다.
# x축(빈도수), y축(빈도수)로 지정하고 y축의 값은 수평으로 보이도록 한다.
hist(ds, main = '캐럿당 가격 분포',
     breaks = 9,
     xlab='캐럿당 가격($)', ylab='빈도수', las=1,
     col = color,
     border='#457b9d')
