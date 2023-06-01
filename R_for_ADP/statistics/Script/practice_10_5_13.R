
# 10장 통계적 추론
# 10.5 패키지를 이용한 분석
# 예제13

# 문제: 예제 1에 주어진 자료에 근거해서 중학교 1학년 남학생의 평균키에 대한
#       95% 신뢰구간을 구하라.

# 자료 불러오기
height = read.csv("./statistics/Data/practice_10_1_01.csv")
# 표본평균
sample_mean = mean(height$x)
# 표본표준편차
sample_sd = sd(height$x)
# 표본의 크기
n = length(height$x)
# 95% 신뢰구간
lowerbound = sample_mean - 1.96 * (sample_sd / sqrt(n))
upperbound = sample_mean + 1.96 * (sample_sd / sqrt(n))

# 정답 출력
print(paste("(", lowerbound, ",", upperbound, ")"))
