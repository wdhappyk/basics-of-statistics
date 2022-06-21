library(ggplot2)

df <- read.csv("medicines.csv")
str(df)
df$Group = factor(df$Group)

pressures_before <- data.frame(Group = df$Group, Pressure = "before", Value = df$Pressure_before)
pressures_after <- data.frame(Group = df$Group, Pressure = "after", Value = df$Pressure_after)

pressures <- rbind(pressures_before, pressures_after)

ggplot(pressures, aes(Group, Value, col=Pressure))+
  geom_boxplot()

ggplot(pressures, aes(Value, fill=Group))+
  geom_density(alpha = 0.5)+
  facet_wrap(Pressure ~ .)

t.test(df$Pressure_before, df$Pressure_after, paired = T)
