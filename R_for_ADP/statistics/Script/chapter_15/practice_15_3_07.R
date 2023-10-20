
# 15장 범주형 자료분석
# 15.3 동질성 검정
# 예제7

# 문제: 씨앗에 화학적인 처리를 하는 것이 싹이 트는 데에 효과가 있는지를 
#       결정하기 위하여 100개의 화학적으로 처리된 씨앗과 150개의 처리되지 않은
#       씨앗을 파종하였다. 그 결과가 다음 표 15-10에 기록되었다. 이 자료에 
#       의하면 처리를 한 것과 처리를 하지 않은 것이 차이가 있다는 충분한 
#       증거가 되는가?

# 자료 불러오기
data = read.csv('./statistics/Data/practice_15_3_07.csv',
                row.names=c('Treated', 'NotTreated')
                )

# 기대도수 구해서 dataframe으로 만들기
expected_frequencies = chisq.test(data)$expected
df_expected = as.data.frame(expected_frequencies)

# 검정통계량 
chi = chisq.test(data, correct=FALSE)$statistic 
    # 표본이 작다고 Yates' 조정을 해줘서 correct=FALSE로 둬야 한다.
    # 혹은 chi = sum((data - df_expected)^2/df_expected)로 구하면 된다.

# 자유도
degree_of_freedom = chisq.test(data, correct=FALSE)$parameter

# 임곗값
critical_value = qchisq(p=0.95, df=degree_of_freedom)

# 정답 출력
print(critical_value < chi) # FALSE. 귀무가설을 기각할 수 없다.
