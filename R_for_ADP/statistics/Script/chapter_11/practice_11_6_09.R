
# 11장 정규모집단에서의 추론
# 11.6 패키지를 이용한 분석
# 예제9

# 문제: 예제 4에 주어져 있는 자료를 가지고 패키지를 이용하여 \mu에 대한 
#       90% 신뢰구간을 구하고 예제 4와 결과를 비교하라.
     
# 가설
# H_0: \mu = 200 vs H_1: \mu < 200

# 자료 불러오기
bacteria = read.csv("./statistics/Data/practice_11_3_04.csv")
# 자료 요약통계량 출력
summary(bacteria$x)
# 표본평균
sample_mean = mean(bacteria$x)
# 표본표준편차
sample_sd = sd(bacteria$x)
# 표본의 크기
n = length(bacteria$x)
# 검정통계량
t = (sample_mean - 200) / (sample_sd / sqrt(n))
# 유의확률 (p_value)
p_value = pt(t, n-1)
# 90% 신뢰구간 구하기
lowerbound = sample_mean - qt(0.95, n-1) * (sample_sd / sqrt(n))
upperbound = sample_mean + qt(0.95, n-1) * (sample_sd / sqrt(n))

# 정답 출력
cat(paste("90% 신뢰구간: (", lowerbound, ",", upperbound, ")\n"))
cat(paste("검정통계량 t가", t, "이고 유의확률p-value가", p_value, 
          "이므로, 90% 유의수준에서 귀무가설을 기각할 수 없다."))
