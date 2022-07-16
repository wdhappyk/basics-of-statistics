test_data <- read.csv("2.8_test_data_passangers.csv", stringsAsFactors = T)
data_for_predict <- read.csv("2.8_predict_passangers.csv", stringsAsFactors = T)


most_suspicious <- function(test_data, data_for_predict){
  model <- glm(is_prohibited ~ ., data = test_data, family = binomial)
  data_for_predict$is_prohibited_odds <- predict(model, newdata = data_for_predict, type="response")
  max_odds <- max(data_for_predict$is_prohibited_odds)
  return(subset(data_for_predict, is_prohibited_odds == max_odds, "passangers", drop=T))
}


most_suspicious(test_data, data_for_predict)
