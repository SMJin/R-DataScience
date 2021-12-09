### chapter 09 기본 그래프 작성하기 II

# 5 연습문제

# 01
library(carData)
head(MplsStops)

pie(table(MplsStops['race']), 
    main = '수상한 생동을 한 행인의 인종 비율(race)')

pie(table(MplsStops$problem), 
    main = '수상한 or 교통신호에 의한 멈춤인가(problem)',
    col = c('red', 'blue'))

Mpl.sus <- MplsStops[MplsStops$problem == 'suspicious',]
pie(table(Mpl.sus$personSearch),
    main = '수상한 멈춤한 사람 중 수색여부(personSearch)')

Mpl.s.g <- table(Mpl.sus$gender)
Mpl.s.g
pie3D(Mpl.s.g, main = '수상한멈춤 with 성별',
      labels = names(Mpl.s.g), labelcex = 1.0,
      explode = 0.1, radius=1.0,
      col = c('green','orange','yellow'))

# 02
library(DAAG)
data(greatLakes)
ds <- data.frame(year=1918:2009, greatLakes)
head(ds)

plot(ds$year, ds$Erie)

plot(ds$year, ds$michHuron,
     main = 'michHuron호 수위', xlab='연도', ylab='수위',
     type='b', lty=1, col='red')

plot(ds$year, ds$Erie, type='b', col = 'red',
     ylim = c(173, 177.5), main = '호수 연도별 수위변화')
lines(ds$year, ds$michHuron, type='b', col = 'green')
lines(ds$year, ds$StClair, type='b', col = 'blue')

# 03
library(DAAG)
data(cfseal)
head(cfseal)
str(cfseal)

boxplot(cfseal$weight, main='물개의 체중분포(weight)')
boxplot(cfseal$heart, main='물개의 심장무게(heart)')

cfseal$twoAge <- rep('young', 30)
cfseal[cfseal$age > mean(cfseal$age), 'twoAge'] <- 'old'
table(cfseal$twoAge)
boxplot(cfseal$weight~cfseal$twoAge,
        col=c('orange', 'green'),
        main='어린 물개와 늙은 물개의 체중분포',
        xlab='연령', ylab='무게')

# 04
library(DAAG)
data(greatLakes)
ds <- data.frame(greatLakes)
head(ds)

colors()
plot(ds$Erie, ds$michHuron)
plot(ds, col = c('skyblue', 'orange', 'turquoise1', 'rosybrown2'))

# 05
library(DAAG)
data(grog)
is.data.frame(grog)

plot(grog$Beer, grog$Wine)
alch.buy <- data.frame(grog$Beer, grog$Wine, grog$Spirit)
table(alch.buy)
plot(alch.buy, col=c('red', 'blue'),
     pch=c(16, 6))
