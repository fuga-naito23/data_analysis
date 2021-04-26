D = read.csv("/Users/naito_fuga/D-step/data_analysis/lecture2/health_records.csv")

D$BMI = D$Weight / D$Height

head(D, n=10)

BMI_mean =  mean(D$BMI)

devD = D$BMI - BMI_mean
head(devD)

devD_2 = devD^2

devD_2_sum = sum(devD_2)

var_BMI = devD_2_sum/length(D$BMI)
var_BMI
