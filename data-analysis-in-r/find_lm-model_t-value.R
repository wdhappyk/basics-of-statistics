# Воспользуйтесь встроенным датасетом attitude, чтобы предсказать рейтинг (rating) 
# по переменным complaints и critical. Каково t-значение для взаимодействия двух факторов?

df <- attitude
lm_model <- lm(rating ~ complaints*critical, df)
s <- summary(lm_model)
R <- s$coefficients["complaints:critical","t value"]
