
# 12장 두 모집단의 비교
# 12.5 패키지를 이용한 분석
# 예제12

# 문제: 산림자원의 현황을 파악하는데 인공위성에 설치된 특수한 스캐너를 
#       이용하려고 하는데 이 스캐너가 충분히 실제 지상의 상황을 반영하는가를
#       알아보기 위해서 인공위성이 숲이 있는 지역을 지날 때의 스캐너의 수치와 
#       도시지역을 지날 때의 스캐너의 수치를 비교하고자 한다. 두 지역에서 
#       얻어진 스캐너 수치의 평균이 다르면 도시와 숲을 구별하는 데 스캐너가 
#       사용될 수가 있다고 한다. 자료로부터 평균 차의 95% 신뢰구간을 구하고,
#       스캐너의 사용이 가능한지를 판단하라.

# 자료 정리
x = read.csv("./statistics/Data/practice_12_5_12_x.csv")$x
y = read.csv("./statistics/Data/practice_12_5_12_y.csv")$x

n_1 = length(x)  # 118 개
n_2 = length(y)  #  40 개

# 표본의 크기가 모두 30 이상이므로 z-검정 시행
x_bar = mean(x)
y_bar = mean(y)

var_1 = var(x)
var_2 = var(y)

se = sqrt(var_1/n_1 + var_2/n_2)

z_alpha = qnorm(0.975)

# 신뢰구간
lowerbound = (x_bar - y_bar) - z_alpha * se
upperbound = (x_bar - y_bar) + z_alpha * se

cat(paste("(", lowerbound, ",", upperbound, ")"))
