df <- read.csv("Pillulkin.csv")
df$patient = factor(df$patient)
str(df)

model <- aov(temperature ~ pill + Error(patient/pill), df)
summary(model)


model2 <- aov(temperature ~ pill*doctor + Error(patient/(pill*doctor)), df)
summary(model2)
