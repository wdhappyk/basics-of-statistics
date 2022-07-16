df1 <- read.csv("2.8_test_luggage_1.csv", stringsAsFactors = T)
df2 <- read.csv("2.8_test_luggage_2.csv", stringsAsFactors = T)

get_features <- function(dataset){
  fit <- glm(is_prohibited ~ ., data = dataset, family = binomial)
  anova_r <- anova(fit, test = "Chisq")
  r <- rownames(subset(as.data.frame(anova_r), `Pr(>Chi)` < 0.05))
  if (length(r) == 0) {
    return("Prediction makes no sense")
  }
  return(r)
}


get_features(df1)
get_features(df2)
