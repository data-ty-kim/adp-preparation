
# 11장 정규모집단에서의 추론
# 11.5 모표준편차에 대한 추론
# 예제7

# 문제: 공장에서 생산되는 볼트의 지름이 정규분포를 다른다는 가정하에 
#       \sigma의 90% 신뢰구간을 구하라.

# 표본의 크기
n = 10
# 표본표준편차
sample_sd = 0.4
# 상, 하위 5%
lower_five_percentage = qchisq(p = 0.05, df = n-1)
upper_five_percentage = qchisq(p = 0.95, df = n-1)
# \sigma^2의 신뢰구간 구하기
lowerbound = (n-1)*sample_sd^2 / upper_five_percentage
upperbound = (n-1)*sample_sd^2 / lower_five_percentage

# 정답 출력
cat(paste("(", sqrt(lowerbound), ",", sqrt(upperbound), ")"))
