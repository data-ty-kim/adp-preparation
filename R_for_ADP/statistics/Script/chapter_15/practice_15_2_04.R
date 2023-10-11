
# 15장 범주형 자료분석
# 15.2 피어슨 카이제곱 적합도 검정
# 예제4

# 문제: 예제1에서 주어진 자료에 대한 귀무가설을 유의수준 \alpha = 0.05로 
#       검정하라. 

# 자료 불러오기
data = read.csv("./statistics/Data/practice_15_1_01.csv")

k = 3   # 범주의 개수
critical_value = qchisq(p=0.95, df=k-1)  # 임곗값
chi = (data$A - 25)^2 /25 + (data$B - 50)^2 /50 + (data$C - 25)^2 /25

# 정답 출력
print(critical_value < chi)  # False. H_0 기각할 수 없다.
