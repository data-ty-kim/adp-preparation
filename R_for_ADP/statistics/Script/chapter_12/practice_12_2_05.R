
# 12장 두 모집단의 비교
# 12.2 두 개의 독립 표본
# 예제5

# 문제: 다음의 두 표본으로부터 S_p^2을 구하라.

# 답지풀이
sample_1 = c(8,5,7,6,9,7)
sample_2 = c(2,6,4,7,6)

n_1 = length(sample_1)
n_2 = length(sample_2)

x_bar = sum(sample_1)/n_1
y_bar = sum(sample_2)/n_2

ss_x = sum(sample_1^2)
ss_y = sum(sample_2^2)

square_s_p = (ss_x - n_1*x_bar^2 + ss_y - n_2*y_bar^2) / (n_1 + n_2 - 2)

# 정답 출력
cat(square_s_p)


# 그냥풀이
sample_1 = c(8,5,7,6,9,7)
sample_2 = c(2,6,4,7,6)

n_1 = length(sample_1)
n_2 = length(sample_2)

x_bar = sum(sample_1)/n_1
y_bar = sum(sample_2)/n_2

answer = (sum((sample_1 - x_bar)^2) + sum((sample_2 - y_bar)^2)) / (n_1 + n_2 - 2)

cat(answer)