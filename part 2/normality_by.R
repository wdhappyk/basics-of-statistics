normality_by <- function(test){
  colnames(test)[1] <- "p_value"
  aggregate(p_value ~ ., test, function(x) shapiro.test(x)$p.value)
}

normality_by(mtcars[,c("mpg", "am", "vs")])
