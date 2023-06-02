
# 11장 정규모집단에서의 추론
# 11.4 신뢰구간과 양측검정의 관계
# 예제5

# 문제: 모평균 \mu에 대한 95% 신뢰구간을 구하고, 
#       유의수준 5%로 가설 H_0: \mu = 8.5 vs H_1: \mu != 8.5를 검정하라.

# 표본의 크기
n = 9
# 표본평균
sample_mean = 8.3
# 표본 표준편차
sample_sd = 1.2
# 95% 신뢰구간
lowerbound = sample_mean + qt(0.025, n-1)  * (sample_sd / sqrt(n))
upperbound = sample_mean + qt(0.975, n-1)  * (sample_sd / sqrt(n))

# 정답 출력
cat(paste("귀무가설의 mu = 8.5가 95% 신뢰구간인", 
          "(", lowerbound, ",", upperbound, ")", 
          "에 포함되므로 유의수준 5%에서 귀무가설을기각할 수 없다."))
