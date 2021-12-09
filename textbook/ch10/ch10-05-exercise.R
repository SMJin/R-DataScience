# Chapter 10 데이터 탐색하기

# 5. 연습문제

# 01
# 데이터 분석 단계에서 수집된 데이터를 분석이 가능한 형태로 정돈하는 과정은 "데이터 전처리"이다.

# 04
install.packages('Ecdat')
library(Ecdat)
head(Hdma)

barplot(table(Hdma$self),
        main = '자영업 여부')

pie(table(Hdma$single),
    main = '미혼 여부')

boxplot(Hdma$uria)

hmda.yes <- Hmda[Hmda$deny=='yes',]
hmda.no <- Hmda[Hmda$deny=='no',]

mean(hmda.yes$hir)
mean(hmda.no$hir)
