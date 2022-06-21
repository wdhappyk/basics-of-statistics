library(ggplot2)

df <- subset(ToothGrowth, supp == "OJ" & dose == 0.5 | supp == "VC" & dose == 2)
str(df)

### plots

ggplot(df, aes(supp, len))+
  geom_boxplot()

ggplot(df, aes(len))+
  geom_histogram(fill="white", col="black", binwidth=3)+
  facet_grid(supp ~ .)


ggplot(df, aes(len, fill=supp))+
  geom_density(alpha = 0.5)


### tests

shapiro.test(df$len[df$supp == "OJ"])
shapiro.test(df$len[df$supp == "VC"])
# or
by(df$len, INDICES = df$supp, shapiro.test)


bartlett.test(len ~ supp, df)


t_test_result <- t.test(len ~ supp, df)
t_stat <- t_test_result$statistic
  