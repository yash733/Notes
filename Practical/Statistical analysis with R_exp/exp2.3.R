uniform_data <- runif(1000, min = 0, max = 1)
exponential_data <- rexp(1000, rate = 1)
normal_data <- rnorm(1000, mean = 0, sd = 1)

par(mfrow = c(2, 2))

hist(uniform_data, main = "Uniform Distribution", xlab = "Value", ylab = "Frequency", col = "violet")
hist(exponential_data, main = "Exponential Distribution", xlab = "Value", ylab = "Frequency", col = "lightgreen")
hist(normal_data, main = "Normal Distribution", xlab = "Value", ylab = "Frequency", col = "salmon")

# Overlay normal curve on the Normal distribution histogram
curve(dnorm(x, mean = mean(normal_data), sd = sd(normal_data)), add = TRUE, col = "blue", lwd = 2)

# Calculate and shade area under the normal curve within a certain range
x <- seq(-3, 3, length.out = 1000)
y <- dnorm(x, mean = mean(normal_data), sd = sd(normal_data))
x_fill <- seq(-2, 2, length.out = 100)
y_fill <- dnorm(x_fill, mean = mean(normal_data), sd = sd(normal_data))

polygon(c(x_fill, rev(x_fill)), c(rep(0, length(x_fill)), rev(y_fill)), col = "lightblue", border = NA)

# Add text for area under the curve
text(0, 0.1, "Area = 0.997", pos = 3, col = "pink", cex = 1.5)

# Reset par settings
par(mfrow=c(1,1))