
heights <- c(156,182,170,165,178,160,175,68,172,178,155,181,186,147,148,149,150)

range_height <- diff(range(heights))

q1 <- quantile(heights, 0.25)
q3 <- quantile(heights, 0.75)
quartile_deviation <- (q3 - q1) / 2

std_deviation <- sd(heights)

variance <- var(heights)

hist(heights, main = "Height Distribution", xlab = "Height", ylab = "Frequency", col = "grey", border = "black")

abline(v = mean(heights), col = "red", lwd = 2, lty = 2)
abline(v = median(heights), col = "green", lwd = 2, lty = 2)
abline(v = q1, col = "blue", lwd = 2, lty = 2)
abline(v = q3, col = "orange", lwd = 2, lty = 2)

legend("topleft", legend = c("Mean", "Median", "Q1", "Q3"), col = c("red", "green", "blue", "orange"), lty = 2, lwd = 2)

cat("Range:", range_height, "\n")
cat("Quartile Deviation:", quartile_deviation, "\n")
cat("Standard Deviation:", std_deviation, "\n")
cat("Variance:", variance, "\n")