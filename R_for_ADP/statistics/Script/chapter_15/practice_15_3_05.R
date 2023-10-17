
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
# (칸의 추정기대도수) = (칸이 속한 행의 합계)X(칸이 속한 열의 합계)/(전체합계)
p_A1 = n_1 * (sum(data['good']) / sum(data))
p_A2 = n_1 * (sum(data['neutral']) / sum(data))
p_A3 = n_1 * (sum(data['bad']) / sum(data))
p_B1 = n_2 * (sum(data['good']) / sum(data))
p_B2 = n_2 * (sum(data['neutral']) / sum(data))
p_B3 = n_2 * (sum(data['bad']) / sum(data))

# 기대도수로 dataframe 만들기
df_e = data.frame(good=c(p_A1, p_B1),
                  neutral=c(p_A2, p_B2),
                  bad=c(p_A3, p_B3),
                  row.names=c('A', 'B')
)

# 표준화된 차이 계산하기 (O-E)^2/E
df = (data - df_e)^2/df_e

# 카이스퀘어 통계량 계산 
chi = sum(df)
# 자유도 계산: (행의 수 - 1) X (열의 수 - 1)
degree_of_freedom = (nrow(df) - 1) * (ncol(df) - 1) 

# 임곗값
critical_value = qchisq(p=0.95, df=degree_of_freedom)

# 정답출력
print(critical_value < chi)  # True. H_0 기각. 두 식이요법 간의 차이는 유의하다.


