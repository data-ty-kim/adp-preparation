
# 10장 통계적 추론
# 10.2 모평균의 추정(표본의 크기가 클 때)
# 예제5

# 문제: \mu 의 95%와 99% 신뢰구간을 구하고 이를 비교하라.

# 표본의 크기
n = 36
# 표본평균
sample_mean = 342
# 표본표준편차
sample_sd = 20
# 95% 신뢰구간
lowerbound_95 = 342 - 1.96 * (sample_sd / sqrt(n)) 
upperbound_95 = 342 + 1.96 * (sample_sd / sqrt(n)) 
print(paste("(", lowerbound_95, ",", upperbound_95, ")"))
# 99% 신뢰구간
lowerbound_99 = 342 - 2.575 * (sample_sd / sqrt(n))
upperbound_99 = 342 + 2.575 * (sample_sd / sqrt(n))

# 정답 출력
print(paste("(", lowerbound_99, ",", upperbound_99, ")"))