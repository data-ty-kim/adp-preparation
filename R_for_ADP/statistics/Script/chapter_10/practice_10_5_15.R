
# 10장 통계적 추론
# 10.5 패키지를 이용한 분석
# 예제15

# 문제: 3장의 예제 11에 주어진 자료로부터 평균교통소음정도(\mu)에 대한 
#       98% 신뢰구간을 구하고, 평균교통소음정도가 60을 초과한다고 주장할 수
#       있는지 유의수준 5%에서 가설검정을 실시하라.

# 가설
# H_0: \mu = 60 vs H_1 \mu > 60

# 자료 불러오기
noise = read.csv("./statistics/Data/practice_03_4_11.csv")
# 표본평균
sample_mean = mean(noise$x)
# 표본표준편차
sample_sd = sd(noise$x)
# 표본의 크기
n = length(noise$x)
# 검정통계량
z = (sample_mean - 60) / (sample_sd/sqrt(n))
# p-value(유의확률)
p_value = 1 - pnorm(z, 0, 1)

# 정답 출력
print(p_value < 0.05)   
# TRUE. 
# p_value가 0.05보다 작게 나왔으므로 유의수준 5%에서 귀무가설을 기각할 수 있다.
# 따라서 평균교통소음정도가 60보다 크다고 할 수 있다.
