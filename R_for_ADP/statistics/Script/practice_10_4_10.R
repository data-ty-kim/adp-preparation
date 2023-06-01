
# 10장 통계적 추론
# 10.4 모비율에 대한 추론(표본의 크기가 클 때)
# 예제10

# 문제: 도시의 실업률 p에 대한 95% 신뢰구간을 구하라.

# 표본의 크기
n = 500
# 실업자 수
x = 41
# p의 추정치
p_hat = x / n
# 95% 신뢰구간
lowerbound = p_hat - 1.96 * sqrt(p_hat * (1 - p_hat) / n)
upperbound = p_hat + 1.96 * sqrt(p_hat * (1 - p_hat) / n)

# 정답 출력
print(paste("(", lowerbound, ",", upperbound, ")"))
