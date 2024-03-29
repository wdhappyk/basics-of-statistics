library(ggplot2)

df <- mtcars
df_numeric <- df[,c(1,3:7)]

fit <- lm(mpg ~ hp, df)
summary(fit)


ggplot(df, aes(hp, mpg))+
  geom_point(size = 1)+
  geom_smooth(formula = y ~ x, method = "lm")+
  facet_grid(. ~ cyl)

ggplot(df, aes(hp, mpg))+
  geom_smooth(formula = y ~ x, method = "lm", se = F)+
  facet_grid(. ~ cyl)


fitted_values_mpg <-  data.frame(mpg = df$mpg, fitted = fit$fitted.values)

new_hp <- data.frame(hp = c(100, 150, 129, 300))
new_hp$mpg <- predict(fit, new_hp)


