get_pc <- function(d){
  pc <- prcomp(d)$x
  d <- cbind(d, pc[,1:2])
  return(d)
}


test_data <- read.csv("3.6_pca_test.csv", stringsAsFactors = T)
get_pc(test_data)
