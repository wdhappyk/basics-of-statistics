# Воспользуемся уже знакомыми данными diamonds из библиотеки ggplot2.
# Только для бриллиантов класса Ideal (переменная cut) c числом карат
# равным 0.46 (переменная carat) постройте линейную регрессию, где
# в качестве зависимой переменной выступает price, в качестве
# предиктора - переменная  depth. Сохраните коэффициенты регрессии
# в переменную fit_coef.

library(ggplot2)
df <- subset(diamonds, cut == "Ideal" & carat == 0.46)
fit <- lm(price ~ depth, df)
fit_coef <- fit$coefficients
