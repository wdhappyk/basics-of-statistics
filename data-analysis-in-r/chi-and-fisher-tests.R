library(ggplot2)

# task 3
diamonds <- ggplot2::diamonds
main_stat <- chisq.test(table(diamonds[c("cut", "color")]))$statistic


# task 4
mean_price <- mean(diamonds$price)
diamonds$factor_price <- factor(as.integer(diamonds$price >= mean_price))

mean_carat <- mean(diamonds$carat)
diamonds$factor_carat <- factor(as.integer(diamonds$carat >= mean_carat))

main_stat = chisq.test(table(diamonds$factor_price, diamonds$factor_carat))$statistic


# task 5
fisher_test <- fisher.test(table(mtcars$am, mtcars$vs))$p.value

