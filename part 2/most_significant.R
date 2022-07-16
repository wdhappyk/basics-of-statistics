df <- read.csv("1.9_test_data.csv", stringsAsFactors = F)

most_significant <-  function(df){
  p_values <- sapply(df, function(x) chisq.test(table(x))$p.value)
  result <- p_values[p_values == min(p_values)]
  return(names(result))
}

most_significant(df)
