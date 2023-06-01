
# 10장 통계적 추론
# 10.3 모평균에 대한 검정(표본의 크기가 클 때)
# 예제8

# 문제: 앞의 예제1에 주어진 중학생의 키 자료로부터 그 도시의 중학교 1학년 
#       남학생의 평균키가 다른 도시의 중학교 1학년 남학생의 평균키인 159cm와
#       차이가 있다고 할 수 있는지 판단하라.

# 데이터 불러오기
data <- as.vector(read.csv("./statistics/Data/practice_10_1_01.csv", 
                           header = TRUE)[,1])
# 검정통계량
z = (mean(data) - 159) / (sd(data) / sqrt(length(data)))
# p-value(유의확률) 구하기
p_value = (1 - pnorm(z)) * 2

# 정답 출력
print(p_value)
