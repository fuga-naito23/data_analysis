D = read.csv("/Users/naito_fuga/D-step/data_analysis/lecture2/health_records.csv")
#make BMI
D$BMI = D$Weight / D$Height
#BMI mean
BMI_mean =  mean(D$BMI)
#BMI dispersion
devD = D$BMI - BMI_mean
devD_2 = devD^2
devD_2_sum = sum(devD_2)
var_BMI = devD_2_sum/length(D$BMI)
var_BMI

#Weight histogram
g <- ggplot(D, aes(x = Weight)) + geom_histogram(binwidth = 1)
plot(g)

#SEX Weight Swarmplot

s <- ggplot(D, aes(x = Sex, y = Weight)) + geom_dotplot(binaxis = "y",binwidth = 1,stackdir = "center", fill="black" )
plot(s)

#Scatter plot BMI weight
w <- ggplot(D, aes(x = Weight, y = BMI, col=Sex)) + geom_point()
plot(w)
