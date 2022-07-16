normality_test <- function(dataset){
  num_df <- dataset[sapply(dataset, is.numeric)]
  return(sapply(num_df, function(x) shapiro.test(x)$p.value))
}

normality_test(iris)

test_data <- read.csv("2.8_normality_test_data.csv")
normality_test(test_data)
