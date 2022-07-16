get_pca2 <- function(data) {
  fit <- prcomp(data)
  sfit <- summary(fit)$importance[3,]
  pcs <- names(sfit[sfit < 0.9])
  pcs <- c(pcs, names(sfit[length(pcs) + 1]))
  return(cbind(data, fit$x[,pcs]))
}

test_data <- read.csv("3.6_pca_test.csv", stringsAsFactors = T)
get_pca2(test_data)
