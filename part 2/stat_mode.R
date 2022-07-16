stat_mode <- function(x){
  t <- table(x)
  m <- max(t)
  return(as.numeric(names(t[t == m])))
}


test_data <- c(1,1,1,1,5,5,5,5,2,2,3,3,0,7)
stat_mode(test_data)
