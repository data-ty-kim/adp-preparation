
# 11장 정규모집단에서의 추론
# 11.5 모표준편차에 대한 추론
# 예제6

# 문제: 자유도가 17인 \chi^2 분포의 상, 하위 5%의 확률을 주는 값을 찾아라.

# 자유도
df = 17
# 상, 하위 5% 확률 주는 값 찾기
lower_five_percentage = qchisq(p=0.05, df)
upper_five_percentage = qchisq(p=0.95, df)

# 정답 출력
cat(lower_five_percentage, upper_five_percentage)
