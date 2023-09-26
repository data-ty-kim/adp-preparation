
# 14장 분산분석
# 14.2 일원배치 분산분석법
# 예제2

# 문제: 안경의 표면 손상을 방지하려고 A, B, C, D의 네 종류의 코팅처리에 대하여 
#       표면보호에 얼마나 효과가 있는지 비교하여 보았다.
#       예제 1의 자료는 네 종류로 코팅처리된 안경에서 표면의 마모도를 측정한 
#       자료이다. 이 자료에서 간편 계산식을 이용하여 총제곱합(SST), 
#       처리제곱합(SStr)과 오차제곱합(SSE)을 구하여라.

# 자료 불러오기
data = read.csv("./statistics/Data/practice_14_2_01.csv")

# 자료 정리
T_1 = sum(data$A, na.rm=TRUE)
T_2 = sum(data$B, na.rm=TRUE)
T_3 = sum(data$C, na.rm=TRUE)
T_4 = sum(data$D, na.rm=TRUE)

n_1 = sum(complete.cases(data$A))
n_2 = sum(complete.cases(data$B))
n_3 = sum(complete.cases(data$C))
n_4 = sum(complete.cases(data$D))

T = T_1 + T_2 + T_3 + T_4
n = n_1 + n_2 + n_3 + n_4

SST = sum(data^2, na.rm = TRUE) - T^2 / n
SStr = (T_1^2/n_1 + T_2^2/n_2 + T_3^2/n_3 + T_4^2/n_4) - T^2 / n
SSE = SST - SStr

# 정답출력
cat(paste('SST:', SST), paste('SStr:', SStr), paste('SSE:', SSE), sep = '\n')
