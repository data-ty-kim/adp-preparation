
# 15장 범주형 자료분석
# 15.4 독립성 검정
# 예제8

# 문제: (한 표본을 두 가지 특성에 따라 분류하는 문제)
#       텔레비전에서 방영되는 오락물에 대한 사람들의 의견이 성별과 어떤 관계가
#       있는지 조사하기 위해서 1,250명의 사람을 임의추출하여 성별과 오락물 
#       방영에 대한 의견으로 다음 자료와 같이 분류하였다. 다음 자료를 분석하라.

# 자료 불러오기
data = read.csv('./statistics/Data/practice_15_4_08.csv', 
                row.names = c('Male', 'Female')
                )

# 상대도수
df_rel = data / sum(data)

# 가설
# H_0: 각 칸의 확률은 그 칸이 속한 열의 합 확률과 행의 합 확률의 곱으로 표현된다.
#      (두 가지의 특성이 서로 독립이다.)

# 기대도수 계산
expected_frequencies = chisq.test(data)$expected
df_expected = as.data.frame(expected_frequencies)

# 검정통계량
chi = chisq.test(data)$statistic

# 자유도
degree_of_freedom = chisq.test(data)$parameter

# 임곗값
critical_value = qchisq(p=0.95, df=degree_of_freedom)

# 정답 출력
print(critical_value < chi) # FALSE. 귀무가설 기각할 수 없다.
