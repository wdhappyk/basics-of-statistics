smart_hclust<-  function(test_data, cluster_number) {
  dist_matrix <- dist(test_data)
  fit <- hclust(dist_matrix)
  cluster <- cutree(fit, cluster_number)
  test_data$cluster <- factor(cluster)
  return(test_data)
}


smart_hclust(swiss, 3)


