data(spam);dim(spam)
library(rpart)
rp <- rpart(type ~ ., data=spam)
rp
library(rpart.plot)
rpart.plot(rp)
library(randomForest)

rf <- randomForest(type ~ ., data=spam)
rf
