source("RandomForestRegressionUtils.R")

library(ggplot2)
library(caret)

randomForestRegressionDataset = importRandomForestRegressionDataset("RandomForestRegression_Position_Salaries.csv")

  
#reading RandomForestRegression model
randomForestRegressionModel = readRDS("randomForestRegressionModel.RDS")

#visualizing RandomForestRegression result for higher resolution and smother curve
visualisingRandomForestRegressionResultForHigherResolution <- function(randomForestRegressionDataset, randomForestRegressionModel){
  
  x_grid = seq(min(randomForestRegressionDataset$Level), max(randomForestRegressionDataset$Level), 0.01)
  ggplot() +
    geom_point(aes(x = randomForestRegressionDataset$Level, y = randomForestRegressionDataset$Salary),
               colour = 'red') +
    geom_line(aes(x = x_grid, y = predict.train(randomForestRegressionModel, newdata = data.frame(Level = x_grid))),
              colour = 'blue') +
    ggtitle('Truth or Bluff (Random Forest Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("RandomForestRegressionResultForHigherResolution.png")
  
}

visualisingRandomForestRegressionResultForHigherResolution(randomForestRegressionDataset, randomForestRegressionModel)