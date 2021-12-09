# Chapter 10 데이터 탐색하기

# 2-1. 단일변수 범주형 데이터 분석
install.packages('carData')
library(carData)
head(TitanicSurvival)

# (1) 데이터 준비
room.class <- TitanicSurvival$passengerClass
head(room.class)

# (2) 도수분포 계산
tbl <- table(room.class)
tbl
sum(tbl)

# (3) 막대그래프 작성
barplot(tbl, main='선실별 탑승객',
        xlab='선실 등급', ylab='탑승객수',
        col=c('blue', 'green', 'yellow'))

# (4) 원그래프 작성
tbl/sum(tbl)
par(mar=c(1,1,4,1))
pie(tbl, main = '선실별 탑승객',
    col=c('blue', 'green', 'yellow'))
par(mar=c(5.1,4.1,4.1,2.1))

# 확인문제
table(TitanicSurvival$sex)
barplot(table(TitanicSurvival$sex),
        main = '성별별 탑승객수',
        xlab='성별', ylab='탑승객수',
        col=c('green', 'blue'))

# 2-2-1 미국 주별 고등학교 졸업률 분석하기

# (1) 데이터 준비
grad <- state.x77[,'HS Grad']
head(grad)

# (2) 사분위수
summary(grad)
var(grad) #분산
sd(grad) #표준편차차

# (3) 히스토그램
hist(grad, main = '주별 졸업률',
     xlab='졸업률', ylab='주의 개수',
     col='orange')

# (4) 상자그림
boxplot(grad, main='주별 졸업률',
        col='orange')

# (5) 졸업률이 가장 낮은 주
idx <- which(grad==min(grad))
grad[idx]

# (6) 졸업률이 가장 높은 주
idx <- which(grad==max(grad))
grad[idx]

# (5) 졸업률이 평균 이하인 주
idx <- which(grad<mean(grad))
grad[idx]

# 확인문제
hist(TitanicSurvival$age)
boxplot(TitanicSurvival$age)

# 2-2-2 영국 폐질환 사망자 분석하기

# (1) 데이터 준비
# ds <- read.csv()
# 데이터 못받아와서 포기

# LAB: 자동차 가격 및 성능 데이터 분석
library(DAAG)
str(carprice)
carprice$Price

range(carprice$Price)
mean(carprice$Price)

hist(carprice$Price, main='자동차 가격',
     xlab='가격대', ylab='빈도',
     col='green')

tbl <- table(carprice$Type)
barplot(tbl, main = '자동차 타입별 빈도수',
        xlab='타입', ylab='빈도수',
        col=rainbow(length(tbl)))

idx <- which(carprice$Price == max(carprice$Price))
carprice[idx, c('Type', 'Price')]
