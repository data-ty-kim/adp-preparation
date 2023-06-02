
# 10장 통계적 추론
# 10.1 서론
# 예제1

# (1) \mu 를 하나의 값으로 추정한다. (점추정)

data <- read.csv("./statistics/Data/practice_10_1_01.csv")
answer_1 <- mean(data$x)

print(answer_1)

# (2) \mu 를 포함할 만한 적당한 구간을 정한다. (구간추정)
lowerbound = answer_1 - 1.96 * (sd(data$x) / sqrt(length(data$x)))
upperbound = answer_1 + 1.96 * (sd(data$x) / sqrt(length(data$x)))

print(paste("(", lowerbound, ",", upperbound, ")"))

# (3) \mu 값이 5년 전의 평균값인 155 cm 와 다른지를 판단한다. (가설검정)
z = (mean(data$x) - 155) / (sd(data$x)/sqrt(length((data$x))))

print(z < -1.96 | z > 1.96) # TRUE. H_0를 기각하고 H_1을 채택한다.
