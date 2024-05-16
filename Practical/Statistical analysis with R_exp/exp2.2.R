# Load required libraries
library(ggplot2)

# Bernoulli Distribution Simulation
# Simulating a single Bernoulli trial with probability of success p
p <- 0.5
bernoulli_trial <- rbinom(1, size = 1, prob = p)

# Binomial Distribution Simulation
# Simulating n independent Bernoulli trials with probability of success p
n <- 10
binomial_trials <- rbinom(1000, size = n, prob = p)

# Poisson Distribution Simulation
# Simulating Poisson distribution with rate parameter lambda
lambda <- 5
poisson_trials <- rpois(1000, lambda)

# Plotting
# Bernoulli Distribution
ggplot(data.frame(outcome = c("Success", "Failure")), aes(x = outcome)) +
  geom_bar(aes(y = ifelse(bernoulli_trial == 1, 1, 0)), stat = "identity") +
  labs(title = "Bernoulli Distribution Simulation", x = "Outcome", y = "Probability") +
  theme_minimal()

# Binomial Distribution
ggplot(data.frame(successes = binomial_trials), aes(x = successes)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Binomial Distribution Simulation", x = "Number of Successes", y = "Frequency") +
  theme_minimal()

# Poisson Distribution
ggplot(data.frame(events = poisson_trials), aes(x = events)) +
  geom_histogram(binwidth = 1, fill = "lightgreen", color = "black") +
  labs(title = "Poisson Distribution Simulation", x = "Number of Events", y = "Frequency") +
  theme_minimal()

