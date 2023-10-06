
# 14장 분산분석
# 14.3 일원배치 분산분석모형에서의 추론
# 예제3

# 문제: 4개의 코팅을 비교하기 위한 예제 1의 자료를 가지고 분산분석표를
#       작성하라. 또한 유의수준 \alpha = 0.05 를 이용하여 평균 마모도가 모두 
#       동일하다는 가설을 검정하라.

# 자료 불러오기
data = read.csv("./statistics/Data/practice_14_2_01.csv")

# 전처리
ind = c( rep("A", length(data$A)),
         rep("B", length(data$B)),
         rep("C", length(data$C)),  
         rep("D", length(data$D)) ) 
dep = c( data[,1], data[,2], data[,3], data[,4])
df = data.frame(ind, dep)
df = na.omit(df)
rownames(df) = NULL

# 분산분석표 작성
my_aov = aov(dep~ind, df)
summary(my_aov) # p_value가 0.0181 이므로 귀무가설을 유의수준 0.05에서 기각한다.
