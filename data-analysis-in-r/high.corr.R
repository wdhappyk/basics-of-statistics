# Напишите функцию high.corr, которая принимает на вход датасет с произвольным 
# числом количественных переменных и возвращает вектор с именами двух переменных 
# с максимальным абсолютным значением коэффициента корреляции.

high.corr <- function(df){
  x <- cor(df)
  diag(x) <- 0
  idx <- which.max(abs(x))
  rn <- idx %/% (ncol(x) + 1) + 1
  cn <- idx - (rn - 1) * ncol(x)
  return(c(rownames(x)[rn], colnames(x)[cn]))
}

high.corr(iris[,-5])
high.corr(swiss)
