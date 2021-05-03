D <- data.frame(birthwt)

D$W <- ifelse(D$ptl==0, 0, 1)
D$X <- ifelse(D$ftv==0, 0, 1)

output.glm <- glm(low~age+lwt+race+smoke+ptl+ht+ui+ftv, family=binomial,data= D)
summary(output.glm)

xaxis1 <- output.glm$linear.predictors
yaxis1 <- output.glm$fitted.values

xaxis2 <- seq(from=min(xaxis1), to=max(xaxis1), length=200)　
yaxis2 <- exp(xaxis2)/(1+exp(xaxis2))
plot(xaxis1, D$low)
lines(xaxis2, yaxis2)
