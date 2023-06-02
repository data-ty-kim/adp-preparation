
# 11장 정규모집단에서의 추론
# 11.6 패키지를 이용한 분석
# 예제10

# 문제: 모평균이나 모표준편차에 대한 추론을 위해서는 모집단의 정규분포 가정이 
#       필요하다. 우선 정규확률 그림을 그리고 정규성 가정에 대한 적합성을
#       밝히고, 모평균에 대한 95% 신뢰구간을 구하라. 모평균이 38보다 크다고 
#       할 수 있는지 유의수준 5%로 검정하라.

# 가설
# H_0: \mu = 38 vs H_1: \mu > 38

# 자료 불러오기
data = read.csv("./statistics/Data/practice_11_6_10.csv")
# 정규확률그림그리기(QQ Plot)
qqnorm(data$x)         # 점들이 대체로 직선 위에 위치하고 있다.
qqline(data$x)         # 따라서 정규분포를 따른다고 가정할 수 있다.
# 요약통계량
summary(data$x)
# 표본의 크기
n = length(data$x)
# 표본평균
sample_mean = mean(data$x)
# 표본표준편차
sample_sd = sd(data$x)
# 95% 신뢰구간 구하기
lowerbound = sample_mean - qt(0.975, n-1) * (sample_sd / sqrt(n))
upperbound = sample_mean + qt(0.975, n-1) * (sample_sd / sqrt(n))
CI = c(lowerbound, upperbound)
# 검정통계량
t = (sample_mean - 38) / (sample_sd / sqrt(n))
# 유의확률 (p-value)
p_value = 1 - pt(t, n-1)

# 정답 출력
cat(paste("검정통계량 t가", t, "이고, 유의확률 p-value가", p_value,
          "이므로 유의수준 5%에서 귀무가설을 기각한다. 
          따라서 평균이 38보다 크다고 할 수 있다."))
