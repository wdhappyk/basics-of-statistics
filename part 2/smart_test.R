smart_test <-  function(x){
  t <- table(x)
  if (min(t) < 5) {
    test <- fisher.test(t)
    return(test$p.value)
  }
  
  test <- chisq.test(t)
  return(c(test$statistic, test$parameter, test$p.value))
}

smart_test(mtcars[,c("am", "vs")])
smart_test(mtcars[1:20,c("am", "vs")])
