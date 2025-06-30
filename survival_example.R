# Example survival analysis in R
# Load survival package and dataset
library(survival)

# Use the built-in 'lung' dataset
?lung

# Fit a Kaplan-Meier survival curve
fit <- survfit(Surv(time, status) ~ sex, data = lung)

# Print summary of fit
summary(fit)

# Plot the survival curves
plot(fit, col = c("blue", "red"), lty = 1:2,
     xlab = "Days", ylab = "Survival probability")
legend("topright", legend = c("Male", "Female"),
       col = c("blue", "red"), lty = 1:2)

