
# 12장 두 모집단의 비교
# 12.3 짝비교
# 예제9

# 문제: 어떤 약의 부작용으로 혈압강하의 효과가 있는지 알아보기 위해서
#       15명의 환자를 대상으로 약의 복용 전후의 이완기 혈압을 측정하였더니 
#       그 결과가 자료와 같았다.

data = read.csv("./statistics/Data/practice_12_2_09.csv")

# (1) 평균 혈압강하량에 대한 95% 신뢰구간을 구하라.
# 자료 정리
d_bar = mean(data$d)
n = length(data$d)
sd = sqrt(sum((data$d-d_bar)^2)/(n-1))
lowerbound = d_bar - qt(0.975, n-1)*sd/(sqrt(n))
upperbound = d_bar + qt(0.975, n-1)*sd/(sqrt(n))
# 정답 출력
cat(paste("(", lowerbound, ",", upperbound, ")"))

# (2) 이 자료로부터 약이 혈압을 내린다는 주장을 할 수 있겠는가? 
#     유의수준 1%로 검정하라.
# 가설
# H_0: \delta = 0 vs H_1: \delta > 0
# 검정통계량
t = d_bar/(sd/sqrt(n))
# 임곗값
critical_value = qt(0.99, n-1)
# 정답 출력
cat(critical_value < t) # TRUE. 귀무가설을 기각한다.
