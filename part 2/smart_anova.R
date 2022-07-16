smart_anova <- function(test_data) {
  gs <- aggregate(test_data$x, list(test_data$y), identity)
  use_anova <- all(apply(gs$x, 1, function(x) shapiro.test(x)$p.value >= 0.05)) &
    bartlett.test(x ~ y, test_data)$p.value >= 0.05
  if (use_anova) {
    return(c(ANOVA = summary(aov(x ~ y, test_data))[[1]]$`Pr(>F)`[1]))
  }
  return(c(KW = kruskal.test(x ~ y, test_data)$p.value))
}

test_data <- read.csv("2.8_s_anova_test.csv", stringsAsFactors = T)


smart_anova(test_data)



