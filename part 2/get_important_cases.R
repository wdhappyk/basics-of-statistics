

get_important_cases <- function(df) {
  num_df <- df[sapply(df, is.numeric)]
  half_nc <- ncol(num_df) %/% 2 + 1
  means <- sapply(num_df, mean)
  values <- as.numeric(apply(apply(num_df, 1, function(x) x > means[names(x)]), 2, sum) >= half_nc)
  df$important_cases <- factor(values, levels=0:1, labels = c("No", "Yes"))
  return(df)
}


test_data <- data.frame(V1 = c(16, 21, 18), 
                        V2 = c(17, 7, 16), 
                        V3 = c(25, 23, 27), 
                        V4 = c(20, 22, 18), 
                        V5 = c(16, 17, 19))



get_important_cases(test_data)
