
heights <- c(155, 165.2, 170.5, 150, 166.6, 170.5, 140)

range_height <- diff(range(heights))

q1 <- quantile(heights, 0.25)
q3 <- quantile(heights, 0.75)
quartile_deviation <- (q3 - q1) / 2

std_deviation <- sd(heights)

variance <- var(heights)

hist(heights, main = "Height Distribution", xlab = "Height", ylab = "Frequency", col = "black", border = "black")

abline(v = mean(heights), col = "red", lwd = 2, lty = 2)
abline(v = median(heights), col = "green", lwd = 2, lty = 2)
abline(v = q1, col = "orange", lwd = 2, lty = 2)
abline(v = q3, col = "orange", lwd = 2, lty = 2)

legend("top", legend = c("Mean", "Median", "Q1", "Q3"), col = c("red", "green", "orange", "grey"), lty = 2, lwd = 2)

cat("Range:", range_height, "\n")
cat("Quartile Deviation:", quartile_deviation, "\n")
cat("Standard Deviation:", std_deviation, "\n")
cat("Variance:",variance,"\n")