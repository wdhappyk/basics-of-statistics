# График зависимости расхода топлива от веса и типа коробки передач автомобиля

df <- mtcars
df$am <- factor(df$am, labels = c('Automatic', 'Manual'))

lin_model <- lm(mpg ~ am*wt, df)

summary(lin_model)

library(ggplot2)

ggplot(df, aes(wt, mpg, col = am))+
  geom_point(size=1)+
  geom_smooth(formula = y ~ x, method = "lm")
