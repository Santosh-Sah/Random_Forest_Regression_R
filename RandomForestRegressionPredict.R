source("RandomForestRegressionUtils.R")

library(caret)

#install.packages(("caret"))

#reading RandomForestRegression model
randomForestRegressionModel = readRDS("randomForestRegressionModel.RDS")

inputValue<- data.frame(Level = 6.5)

#predicting new data
#predictedValues = predict(randomForestRegressionModel, newdata = inputValue)

#predicting new data
predictedValues = predict.train(randomForestRegressionModel, newdata = inputValue)


predictedValues #250000
randomForestRegressionModel$modelInfo$label

