n_simulations <- 200

die_rolls <- sample(1:6, n_simulations, replace = TRUE)

probabilities <- table(die_rolls) / n_simulations

new_theoretical_probs <- c(0.15, 0.12, 0.2, 0.4, 0.28, 0.3)

# Plotting the results with new theoretical probabilities
barplot(rbind(probabilities, new_theoretical_probs),
        beside = TRUE, names.arg = 1:6, col = c("yellow", "blue"),
        legend.text = c("Simulated", "Theoretical"),
        main = "Simulated vs Theoretical Probabilitie ",
        ylab = "Probability", ylim = c(0, 0.5),
        xlab = "Possible Outcome")
