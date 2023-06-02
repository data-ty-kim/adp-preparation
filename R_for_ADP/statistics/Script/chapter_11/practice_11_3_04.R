
# 11장 정규모집단에서의 추론
# 11.3 모평균에 대한 추론
# 예제4

# 문제: 자료로부터 호수의 단위부피당 평균 세균수(\mu)가 200보다 적다고 
#       주장할 수 있겠는가?

# 가설
# H_0: \mu = 200 vs H_1: \mu < 200

# 자료 불러오기
data = read.csv("./statistics/Data/practice_11_3_04.csv")
# 표본평균
sample_mean = mean(data$x)
# 표본표준편차
sample_sd = sd(data$x)
# 표본의 크기
n = length(data$x)
# 검정통계량
t = (sample_mean - 200) / (sample_sd / sqrt(n))
# 임곗값 (유의수준 0.05)
critical_value = qt(0.05, n-1)
# 임곗값과 검정통계량 비교
print(t < critical_value)
# 유의확률(p_value)
p_value = pt(t, n-1)

# 정답 출력
cat(paste("검정통계량 t가", t, "이고, 유의확률 p-value가", p_value, "이므로, 
          유의수준 0.05에서 귀무가설을 기각할 수 없다. 즉, 주어진 자료로부터 
          호수의 단위부피당 평균세균수가 200보다 적다고 안심할 수 없다."))
