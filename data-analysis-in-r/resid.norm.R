# Напишите функцию resid.norm, которая тестирует распределение остатков от модели 
# на нормальность при помощи функции shapiro.test и создает гистограмму при помощи 
# функции ggplot() с красной заливкой "red", если распределение остатков значимо 
# отличается от нормального (p < 0.05), и с зелёной заливкой "green" - если 
# распределение остатков значимо не отличается от нормального. 
# 
# На вход функция получает регрессионную модель. Функция возвращает переменную, 
# в которой сохранен график ggplot.

library(ggplot2)

resid.norm <- function(fit){
  fill = ifelse(shapiro.test(fit$residuals)$p.value < 0.05, "red", "green")
  plot <- ggplot(fit, aes(fit$residuals))+
    geom_histogram(fill=fill)
  return(plot)
}

fit1 <- lm(mpg ~ disp, mtcars)
resid.norm(fit1)

fit2 <- lm(mpg ~ wt, mtcars)
resid.norm(fit2)
