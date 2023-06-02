
# 11장 정규모집단에서의 추론
# 11.5 모표준편차에 대한 추론
# 예제8

# 문제: 앞의 예제 7에서 \sigma가 0.2보다 크다고 할 수 있는지 
#       유의수준 0.05로 검정하라.

# 가설
# H_0: \sigma = 0.2 vs H_1: \sigma > 0.2

# 표본의 크기
n = 10
# 표본표준편차
sample_sd = 0.4
# 검정통계량
chi = ((n-1) * sample_sd^2) / (0.2)^2
# 임곗값 (유의수준 0.05) 
critical_value = qchisq(0.95, df = n-1)

# 정답 출력
print(critical_value < chi)  # TRUE. H_0 기각.
