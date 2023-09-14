
# 12장 두 모집단의 비교
# 12.2 두 개의 독립 표본
# 예제7

# 문제: 위의 예제 6에서 주어진 자료로부터 들판에서 자연적으로 말린 목초로 
#       사육하는 젖소가 인공적으로 말린 목초로 사육하는 젖소보다 우유생산량이 
#       많다고 할 수 있겠는가? 유의수준 0.05로 검정하라.

# 가설
# H_0: \mu_1 - \mu_2 = 0 vs H_1: \mu_1 - \mu_2 > 0

# 자료 불러오기
data = read.csv("./statistics/Data/practice_12_2_06.csv")

# 자료 정리
n_1 = sum(complete.cases(data$x))
x_bar = mean(data$x, na.rm=TRUE)
s_1 = sd(data$x, na.rm=TRUE)

n_2 = sum(complete.cases(data$y))
y_bar = mean(data$y, na.rm=TRUE)
s_2 = sd(data$y, na.rm=TRUE)

s_p = sqrt(((n_1-1)*s_1^2 + (n_2-1)*s_2^2)/(n_1 + n_2 - 2))

# 검정통계량
t = (x_bar - y_bar) / (s_p*sqrt(1/n_1 + 1/n_2))

# 임곗값 (유의수준 0.05) 
critical_value = qt(0.95, df = n_1+n_2-2)

# 정답 출력
print(critical_value < t)  # False. H_0 기각할 수 없다.


