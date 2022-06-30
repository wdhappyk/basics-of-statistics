library(ggplot2)

my_df <- mtcars
my_df$cyl <- factor(my_df$cyl, labels=c("four", "six", "eight"))

fit <- lm(mpg ~ cyl, my_df)
summary(fit)

ggplot(my_df, aes(cyl, mpg))+
  geom_point()+
  geom_smooth(method="lm")+
  theme(axis.text=element_text(),
        axis.title=element_text(face="bold"))
