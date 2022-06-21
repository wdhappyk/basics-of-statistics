library(ggplot2)

mydata <- as.data.frame(HairEyeColor)

obj <- ggplot(subset(mydata, Sex == "Female"), aes(x=Hair, y=Freq, fill=Eye))+ 
  geom_bar(stat="identity", position = "dodge")+
  scale_fill_manual(values=c("Brown", "Blue", "Darkgrey", "Darkgreen"))

obj
