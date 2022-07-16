is_multicol <- function(d) {
  c <- abs(round(cor(d),3))
  diag(c) <- 0
  has_cor <- apply(c == 1, 1, any)
  r <- names(has_cor[has_cor])
  if (length(r) == 0) {
    return("There is no collinearity in the data")
  }
  return(r)
}


td1 <- read.csv("3.6_Norris_1.csv")
is_multicol(td1)

td2 <- read.csv("3.6_Norris_2.csv")
is_multicol(td2)

td3 <- read.csv("3.6_Norris_3.csv")
is_multicol(td3)

test_data <- as.data.frame(list(V1 = c(13, 2, 4, 6, 7), V2 = c(14, 6, 10, 13, -4), V3 = c(21, -1, 11, 36, 15), V4 = c(10, -1, 3, 5, 2), V5 = c(14, -8, 4, 29, 8), V6 = c(16, -3, 0, -1, 22), V7 = c(-10, 9, 6, 7, -16), V8 = c(6, 18, 15, 16, 0)))
is_multicol(test_data)

test_data <- as.data.frame(list(V1 = c(11, 11, 18, 2, 24), V2 = c(14, 8, 19, 1, 9), V3 = c(14, 5, -3, 6, 16), V4 = c(-7, 2, 10, 1, -9), V5 = c(21, 15, 26, 8, 16), V6 = c(12, 12, 8, 7, 2)))
is_multicol(test_data)
