
# 10장 통계적 추론
# 10.2 모평균의 추정(표본의 크기가 클 때)
# 예제6

# 문제: 평균무게 \mu에 대한 오차가 0.75 이하가 될 확률이 최소한 90%가 되기 
#       위해서는 어느 정도 크기의 표본을 조사하여야 하겠는가?

# 표준편차
population_sd = 4
# 유의확률
alpha = 0.1
# 오차
d = 0.75
# 표본의 크기 n의 하한
lowerbound = (1.645 * (population_sd / d))^2

# 정답 출력
print(ceiling(lowerbound))
