# Напишите функцию, которая на вход получает dataframe с двумя количественными 
# переменными, а возвращает стандартизованные коэффициенты для регрессионной 
# модели, в которой первая переменная датафрейма выступает в качестве зависимой, 
# а вторая в качестве независимой.

x <- mtcars[,c(1,3)]

beta.coef <- function(x){
  sx <- as.data.frame(scale(x))
  model <- lm(sx[[1]] ~ sx[[2]], sx)
  return(model$coefficients)
}

beta.coef(x)

# or
QuantPsyc::lm.beta(lm(mpg ~ disp, x))
