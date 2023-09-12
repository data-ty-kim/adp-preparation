
# 12장 두 모집단의 비교
# 12.2 두 개의 독립 표본
# 예제6

# 문제: 목초의 종류에 따른 우유생산량의 차이를 알아보기 위해서 25마리의 젖소를 
#       대상으로 3주 동안 임의로 추출된 12마리의 젖소에게는 인공적으로 건조시킨 
#       목초를 주고, 13마리의 젖소에게는 들판에서 말린 목초를 주었다. 각 젖소의 
#       일일 평균 우유생산량이 다음과 같이 주어졌다고 할 때 일일 평균 
#       우유생산량의 차에 대한 95% 신뢰구간을 구하라.

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

# 95% 신뢰구간 구하기
lowerbound = (x_bar - y_bar) - qt(0.975, (n_1+n_2-2)) * (s_p*sqrt(1/n_1+1/n_2))
upperbound = (x_bar - y_bar) + qt(0.975, (n_1+n_2-2)) * (s_p*sqrt(1/n_1+1/n_2))

# 정답 출력
cat(paste("(", lowerbound, ",", upperbound, ")"))
