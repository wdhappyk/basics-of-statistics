df <- read.csv("1.9_test_drugs.csv", stringsAsFactors = T)

max_resid <- function(df){
  fit <- chisq.test(table(df))
  t <- fit$stdres
  idx <- which.max(t)
  x <- data.frame(t)
  r <- x[idx,]
  return(c(as.vector(r$Drugs), as.vector(r$Result)))
}

max_resid(df)
