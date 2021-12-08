### chapter 08 기본 그래프 작성하기 I

# 4. 실전분석

install.packages('reshape2')
library(reshape2)
str(tips)
head(tips)

color.6 <- rep('#a8dadc', 6)
color.6[2] <- '#1d3557'

color.4 <- rep('#a8dadc', 4)
color.4[2] <- '#1d3557'
color.4[3] <- '#457b9d'

par(mfrow=c(2,2))
barplot(table(tips$sex), main = 'gender', col = c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main = 'Day of the week', col = color.4)
barplot(table(tips$time), main = 'time', col = c('#1d3557', '#a8dadc'))
barplot(table(tips$size), main = 'size', col = color.6)

tips.new <- tips
tips.new$perHead <- tips.new$total_bill / tips.new$size

color.5 <- rep('#a8dadc', 5)
color.5[2] <- '#1d3557'

par(mfrow=c(1,3))
hist(tips.new$perHead, 
     main = '1인당 주문 금액', xlab='단위:달러',
     breaks = 5, col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'perHead'],
     main = '1인당 주문 금액(런치)', xlab='단위:달러',
     breaks = 4, col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'perHead'],
     main = '1인당 주문 금액(디너)', xlab='단위:달러',
     breaks = 4, col = color.5)

tips.new$percent <- tips.new$tip / tips.new$total_bill * 100
par(mfrow=c(1,2))
res.lunch <- hist(tips.new[tips.new$time=='Lunch', 'percent'],
                  main = '주문 금액 대비 팁의 비율(런치)',
                  xlab='percent(%)',
                  breaks=5)
res.dinner <- hist(tips.new[tips.new$time=='Dinner', 'percent'],
                   main = '주문 금액 대비 팁의 비율(디너)',
                   xlab = 'percent(%)',
                   breaks = 10)
par(mfrow=c(1,1))
