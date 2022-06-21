df <- read.table("dataset_11504_16.txt")

res <- t.test(V1 ~ V2, df)
if (res$p.value <= 0.05) {
  print(paste(res$estimate, res$p.value))
} else {
  print("The difference is not significant")
}