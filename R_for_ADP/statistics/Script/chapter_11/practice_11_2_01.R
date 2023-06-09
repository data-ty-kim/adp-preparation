
# 11장 정규모집단에서의 추론
# 11.2 t 분포
# 예제1

# 문제: 부록의 t 분포표를 이용하여 자유도가 2와 10일 때, 각각 상위 10%의
#       확률을 주는 값을 찾아라.

# 자유도가 2일 때
value_t_1 = qt(0.9, 2)
# 자유도가 10일 때
value_t_2 = qt(0.9, 10)

# 정답 출력
print(paste("t_0.1(2) =", value_t_1))
print(paste("t_0.1(10) =", value_t_2))
