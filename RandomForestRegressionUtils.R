importRandomForestRegressionDataset <- function(randomForestRegressionDatasetFileName) {
  
  #importing dataset
  #dataset is very small and hence we are not going to split into training and testing set
  randomForestRegressionDataset = read.csv(randomForestRegressionDatasetFileName)
  
  randomForestRegressionDataset = randomForestRegressionDataset[2:3]
  
  return (randomForestRegressionDataset)
  
}

#Save RandomForestRegression Model
saveRandomForestRegressionModel <- function(randomForestRegressionModel) {
  
  saveRDS(randomForestRegressionModel, file = "randomForestRegressionModel.RDS")
}
