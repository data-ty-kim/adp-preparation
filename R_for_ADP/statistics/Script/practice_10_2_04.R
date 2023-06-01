
# 10장 통계적 추론
# 10.2 모평균의 추정(표본의 크기가 클 때)
# 예제4

# 문제: \mu에 대한 95% 신뢰구간을 구하여라.

# 표준편차
population_sd = 8
# 표본의 크기
n = 25
# 표본평균
sample_mean = 42.7
# 신뢰구간
lowerbound = 42.7 - 1.96*(population_sd/sqrt(n))
upperbound = 42.7 + 1.96*(population_sd/sqrt(n))

# 정답 출력
print(paste("(", lowerbound, ",", upperbound, ")"))
