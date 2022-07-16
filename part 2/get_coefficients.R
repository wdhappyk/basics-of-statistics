df <- read.csv("2.8_test_data_01.csv")
test_data <- transform(df, x = factor(x), y = factor(y))



get_coefficients <- function(dataset){
  fit <- glm(y ~ x, data = dataset, family = binomial())
  return(sapply(fit$coefficients, exp))
}

get_coefficients(test_data)
