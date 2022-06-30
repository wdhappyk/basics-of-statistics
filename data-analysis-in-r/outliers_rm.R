outliers.rm <- function(xs){
  iqr <- IQR(xs)
  qs <- quantile(xs, probs = c(0.25, 0.75))
  k <- 1.5 * iqr
  sides <- c(qs[1] - k, qs[2] + k)
  result <- xs[xs>sides[1] & xs<sides[2]]
  return(result)
}
