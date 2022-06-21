df <- mtcars
df$vs <- factor(df$vs, labels=c("V", "S"))
df$am <- factor(df$am, labels=c("Auto", "Manual"))

library(ggplot2)

ggplot(df, aes(x = mpg))+
  geom_dotplot()

ggplot(df, aes(x = mpg, fill = am))+
  geom_dotplot()

ggplot(df, aes(x = mpg))+
  geom_histogram(fill = "white", col = "black", binwidth=2)

hist(df$mpg, xlab = "MPG")

ggplot(df, aes(x = mpg))+
  geom_density()

ggplot(df, aes(x = mpg, fill = am))+
  geom_density(alpha=0.3)

ggplot(df, aes(x = am, y = hp))+
  geom_boxplot()


boxplot(mpg ~ am, df)


ggplot(df, aes(x = am, y = hp, col = vs))+
  geom_boxplot()


ggplot(df, aes(x = mpg, y = hp, col = vs, size = qsec))+
  geom_point()


plot(df$mpg, df$hp, xlab = "MPG", ylab = "HP")
