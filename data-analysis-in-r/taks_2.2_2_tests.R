df <- read.table("dataset_11504_15.txt")

bt_r <- bartlett.test(V1 ~ V2, df)

if (bt_r$p.value > 0.05) {
  result <- t.test(V1 ~ V2, df)
} else {
  result <- wilcox.test(V1 ~ V2, df)
}

result