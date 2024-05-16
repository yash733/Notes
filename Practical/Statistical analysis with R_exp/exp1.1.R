library(DescTools)
# Yash Gupta (20BCS5009)
a<-c(32,5,8,16,12,8,6,20,8,15,8,2,2,2,19)
mean(a)
Mode(a)
median(a)

hist(a, main = "Histogram of Data", xlab = "Values", col = "yellow", border = "orange")
# Add a vertical line for the mean
abline(v = mean(a), col = "red", lwd = 2)
# Add a vertical line for the median
abline(v = median(a), col = "blue", lwd = 1)
# Add a vertical line for the mode
abline(v = Mode(a), col = "green", lwd = 2)
# Add a legend
legend("topright", legend = c("Mean", "Median", "Mode"), col = c("red", "blue", "green"),lwd=2)

