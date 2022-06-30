df <- read.csv("step6.csv")
str(df)

filtered.cor <- function(x){
  num_cols <- sapply(x, is.numeric)
  r <- cor(x[,num_cols])
  diag(r) <- 0
  return(r[which.max(abs(r))])
}

filtered.cor(df)
