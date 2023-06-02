
# 10장 통계적 추론
# 10.4 모비율에 대한 추론(표본의 크기가 클 때)
# 예제11

# 문제: p에 대한 추정량의 오차가 0.05 이하가 될 확률이 최소한 98%가 되기를 
#      원하다면 몇 명을 대상으로 시력장애 여부를 조사하여야 하겠는가?

# 오차
d = 0.05
# 임계값
critical_value = qnorm(0.99, 0, 1)
# n의 하한
lower_bound = (1/4) * (critical_value / d)^2

# 정답 출력
print(ceiling(lower_bound))
