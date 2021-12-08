### chapter 08 기본 그래프 작성하기 I

# 5. 연습문제

# 01
##### 히스토그램과 막대그래프는 막대의 높이를 통해 빈토를 표현한다. 범주가 정해져 있는 데이터의 경우에는 "막대그래프"을, 숫자형 자료일 경우에는 "히스토그램"을 사용한다.

# 02
colors()
color.2 <- c('mediumpurple3', 'thistle')

survey <- c(T, F, T, T, F, T, F, F, F, F)
survey <- table(survey)
survey
rownames(survey) <- c('NO', 'YES')
barplot(survey, main='어떤 사안에 대한 찬반 의견',
        col=color.2, las=1)

# 03
head(mtcars)
c.cyl <- mtcars$cyl
c.cyl <- table(c.cyl)
barplot(c.cyl, main='실린더 종류별 분포',
        col=c('slateblue1', 'powderblue', 'skyblue1'),
        las=1, ylab='실린더의 수', horiz=T)

# 04
ds <- sleep$extra
hist(ds, main='Histogram of sleep',
     xlab = 'Increase in hours of sleep',
     breaks=4)

# 05
ds <- table(mtcars$cyl, mtcars$gear)
ds
color <- c('tomato', 'salmon', 'peachpuff')
barplot(ds, main = 'Distribution of carburetors',
     xlab = 'Number of gear', ylab = 'frequency',
     col = color, beside = T,
     legend.text = c('cyl 4', 'cyl 6', 'cyl 8'))

# 06
ds <- trees$Height
color.6 <- rep('#f1faee', 6)
color.6[3:5] <- '#e63946'
hist(ds, main = 'Histogram of Black Cherry Trees',
     xlab = 'Height(ft)', ylab = 'Frequency',
     breaks = 6, col = color.6)

# 07
par(mfrow=c(2,3), mar=c(5,4,4,3))
par(mfrow=c(1,1), mar=c(5,5,5,5))

# 08
par(mfrow=c(1,1), mar=c(5,5,5,5))
male <- c(6.9, 30.4, 80.4)
female <- c(4.9, 38.2, 82.7)
ds <- rbind(male, female)
colnames(ds) <- c('samsung', 'apple', 'huawei')
barplot(ds, main = '성별에 따른 브랜드 선호도',
        horiz=T, beside=T, las=1,
        legend.text=c('남자', '여자'),
        col = c('yellow', 'skyblue'),
        args.legend=list(x='topright', bty='n', inset=c(-0.25,0)))

# 09
holyday <- c(14, 15, 15, 16, 14, 11, 12)
holyday.actual <- c(15, 35, 38, 36, 34, 32, 32)
ds <- rbind(holyday, holyday.actual)
colnames(ds) <- c('한국', '일본', '독일', '러시아', '미국', '프랑스', '호주')
barplot(ds, main = '주요 국가별 공휴일 현황',
        xlab='국가', las=1, beside=T,
        col = c('grey', 'skyblue'),
        legend.text=c('공휴일 수', '실제 쉬는 날'),
        args.legend=list(x='topleft', bty='n', inset=c(-0.25,-0.25)))

