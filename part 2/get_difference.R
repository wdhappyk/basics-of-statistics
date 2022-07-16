smart_hclust<-  function(test_data, cluster_number) {
  dist_matrix <- dist(test_data)
  fit <- hclust(dist_matrix)
  cluster <- cutree(fit, cluster_number)
  test_data$cluster <- factor(cluster)
  return(test_data)
}

get_difference<-  function(test_data, n_cluster) {
  c_data <- smart_hclust(test_data, n_cluster)
  num_cols <- colnames(c_data)[sapply(c_data, is.numeric)]
  p_values <- sapply(num_cols, function(x) summary(aov(c_data[,x] ~ cluster, c_data))[[1]]$`Pr(>F)`[1])
  return(names(p_values[p_values < 0.05]))
}


test_data <- read.csv("3.6_cluster_1.csv", stringsAsFactors = T)
get_difference(test_data, 2)
