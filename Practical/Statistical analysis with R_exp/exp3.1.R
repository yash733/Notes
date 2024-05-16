library(dplyr)

# Load the dataset
data <- read.csv("C:/Users/YASHG/PycharmProjects/pythonProject/NIRf.csv")

# Simple Random Sampling
srs_sample <- data %>% sample_n(size = 100)

# Stratified Sampling
strati <- data %>% group_by(State) %>% slice_sample(n = 50, replace = TRUE)
stratified_sample <- ungroup(strati)

# Cluster Sampling
clusters <- unique(data$City)
cluster_sample <- data[data$cluster_variable %in% sample(clusters, size = 4) ]

# Estimate parameters for each sample
mean_srs <- mean(srs_sample$Score)
mean_stratified <- mean(stratified_sample$Score)
mean_cluster <- mean(cluster_sample$Score)

# Compare parameter estimates
cat("Mean (Simple Random Sampling):", mean_srs, "\n")
cat("Mean (Stratified Sampling):", mean_stratified, "\n")
cat("Mean (Cluster Sampling):", mean_cluster, "\n")
