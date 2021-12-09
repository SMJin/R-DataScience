### chapter 09 기본 그래프 작성하기 II

# 4. 실전분석
library(DAAG)
str(socsupport)
help(socsupport)

library(plotrix)
ds <- table(socsupport$age)
pie3D(ds, main='연령 분포',
      labels=names(ds),
      labelcex=1.0,
      explode=0.1,
      radius=1.5,
      col=rainbow(length(ds)))

boxplot(socsupport$emotional~socsupport$country,
        main='정서적 지원 제도 비교')

boxplot(socsupport$emotionalsat~socsupport$gender,
        main='정서적 지원 제도 만족도 비교')

boxplot(socsupport$emotionalsat~socsupport$age,
        main='정서적 지원 제도 만족도 비교',
        col = rainbow(5))

group <- as.numeric(socsupport$gender)
color <- c('blue', 'red')
plot(socsupport[,c('emotionalsat', 'tangiblesat', 'age')],
#     pch=group,
     col=color[group])
