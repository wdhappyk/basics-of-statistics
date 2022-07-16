df <- read.csv("2.8_cen_data.csv")
var_names = c("X4", "X2", "X1")

test_data <- as.data.frame(list(X1 = c(11, 9, 8, 10, 11), X2 = c(12, 9, 13, 10, 9), X3 = c(13, 8, 13, 11, 10), X4 = c(12, 13, 13, 11, 12), X5 = c(11, 10, 11, 13, 9)))
test_var_names <- "X3"


centered <- function(df, var_names){
  df[var_names] = sapply(df[var_names], function(x) x - mean(x))
  return(df)
}


centered(df, var_names)
centered(test_data, test_var_names)
