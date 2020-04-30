source("RandomForestRegressionUtils.R")

library(caret)

#reading dataset
randomForestRegressionDataset = importRandomForestRegressionDataset("RandomForestRegression_Position_Salaries.csv")

set.seed(1234)

# Fitting RandomForestRegression dataset
randomForestRegression = train(x = randomForestRegressionDataset[-2],
                                      y = randomForestRegressionDataset$Salary,
                                      ntree = 500)


#saving RandomForestRegression model
saveRandomForestRegressionModel(randomForestRegression)