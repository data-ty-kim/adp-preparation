
# 14장 분산분석
# 14.4 패키지를 이용한 분석
# 예제4

# 문제: 예제1의 자료를 가지고 R을 이용하여 분산분석을 수행하라.
#       (사실상 예제3과 같은 문제.)

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
