### chapter 09 기본 그래프 작성하기 II

# 1. 원, 선그래프 LAB
install.packages('DAAG')
library(DAAG)

ds<-table(science$like)
pie(ds, main = '선호 점수별 비율',
    col = rainbow(length(ds)),
    radius=1)

install.packages('plotrix')
library(plotrix)

ds <- table(science$State)
pie3D(ds, main='주별 학생 비율',
      labels=names(ds),
      labelcex=1.0, #폰트크기
      explode=0.1, #파이 간 간격
      radius=1.5,
      col=c('brown', 'green'))

year = 1875:1972
ds <- data.frame(year, LakeHuron)
head(ds)

plot(ds$year, ds$LakeHuron,
     main = '수위 변화',
     type='b', lty=1,
     col='blue',
     xlab='연도', ylab='수위')
