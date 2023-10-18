
# 15장 범주형 자료분석
# 15.3 동질성 검정
# 예제6

# 문제: 직업별로 알코올 중독자의 비율에 관심이 있어 사무원, 교육자, 기업가,
#       상인들의 집단에서 임의로 표본을 추출하여 면담을 통하여 알코올 중독 
#       여부를 조사한 자료가 다음과 같다. 알코올 중독의 비율이 4개의 직업군별로
#       같은지를 검정하라.

data = read.csv('./statistics/Data/practice_15_3_06.csv', 
                row.names=c('사무원', '교육자', '기업인', '상인')
                )

# 기대도수 구해서 dataframe으로 만들기
expected_frequencies = chisq.test(data)$expected
df_expected = as.data.frame(expected_frequencies)

# 귀무가설: H_0: p_1 = p_2 = p_3 = p_4

# 검정통계량
chi = chisq.test(data)$statistic
degree_of_freedom = chisq.test(data)$parameter

# 임곗값
critical_value = qchisq(p=0.95, df=degree_of_freedom)

# 정답 출력
print(critical_value < chi) # True. 귀무가설 기각.
