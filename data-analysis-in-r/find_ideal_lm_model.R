# C помощью функции step найдите оптимальную модель для предсказания rating в датасете attitude.

model_full <- lm(rating ~ ., data = attitude) 
model_null <- lm(rating ~ 1, data = attitude)

scope = list(lower = model_null, upper = model_full)

ideal_model <- step(model_full, scope, direction="backward")
summary(ideal_model)

# Сравните полную и оптимальную модели с помощью функции anova.
# Введите получившееся F-значение.

dif <- anova(model_full, ideal_model)
R <- dif$F
