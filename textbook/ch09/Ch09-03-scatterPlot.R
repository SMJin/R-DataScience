### chapter 09 기본 그래프 작성하기 II

# 3. 산점도 LAB
library(DAAG)
str(tinting)

plot(tinting$it, tinting$csoa)

group <- tinting$tint
color <- c('red', 'green', 'blue')
plot(tinting$it, tinting$csoa,
     col=color[group])
