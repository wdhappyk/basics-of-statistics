df <- mtcars[,c('mpg', 'disp')]
test_data <- as.data.frame(list(col1 = c(-0.94, 1.38, 0.47, -0.52, 0.39, 0.86, -1.08, -0.32, 1.23, 0.64, 0.23, -1.67, 0.83, 0.75, -0.97, 0.87, 1.65, -0.83, 1.87, -2.29, -0.11, 0.99, 0.35, -1.21, -0.19, 0.05, -0.47, -0.15, 0.51, -1.54), col2 = c(0.01, -0.16, 0.56, -0.18, 0.27, 0.34, -0.12, -0.83, -1.15, 1.19, -1.27, -0.6, 0.67, -0.33, -1.38, 0.43, -1.98, 1.55, 1.96, -1.38, -0.29, -0.58, -0.24, 0.66, -0.9, 0.79, -1.59, 0.59, 2.12, -0.85)))


smart_cor <- function(x){
  test_results <- apply(x, 2, shapiro.test)
  p_values <- sapply(test_results, function(i) i$p.value)
  method = ifelse(all(p_values >= 0.05), 'pearson', 'spearman')
  result <- cor.test(x[,1], x[,2], method = method)
  return(result$estimate)
}

smart_cor(df)





