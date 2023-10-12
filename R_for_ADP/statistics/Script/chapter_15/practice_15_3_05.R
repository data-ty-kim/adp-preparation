
# 15장 범주형 자료분석
# 15.3 동질성 검정
# 예제5

# 문제: 예제 2의 자료에서 두 식이요법 간에 차이가 있다고 할 수 있는지를 
#       유의수준 \alpha = 0.05 로 검정하라. 


# 자료 불러오기
data = read.csv("./statistics/Data/practice_15_1_02.csv", row.names=c('A', 'B'))

# 표본의 크기 구하기
n_1 = rowSums(data)[1]
n_2 = rowSums(data)[2]

# 기대도수 구하기
p_1 = n_1 * (data['A','good'] / sum(data))
