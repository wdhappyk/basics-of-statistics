?npk

df <- npk

model <- aov(yield ~ N*P, df)
summary(model)

model3 <- aov(yield ~ N+P+K, df)
summary(model3)




?iris

df1 <- iris

library(ggplot2)

ggplot(df1, aes(Species, Sepal.Width))+
  geom_boxplot()

ggplot(df1, aes(Species, Sepal.Width))+
  stat_summary(fun.data = mean_se)+
  stat_summary(fun.data=mean_se, geom="errorbar")

model1 <- aov(Sepal.Width ~ Species, iris)
summary(model1)

TukeyHSD(model1)
