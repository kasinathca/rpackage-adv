# Required packages:
# install.packages("tseries")

# Title: Log Returns Transformation & ACF/PACF Analysis
# Aim: To transform the non-stationary DAX series into stationary log returns, confirm stationarity via ADF test, and identify ARIMA model parameters using ACF and PACF plots.
# Procedure: 1. Compute log returns by applying log transformation followed by differencing.2. Plot the log return series to visually confirm stationarity.3. Remove NA values and perform ADF test again.4. Set up 1Ã—2 plotting window and generate ACF and PACF plots.5. Reset plotting layout to single window.
# Result: Log differencing successfully transformed the non-stationary DAX series into a stationary series. ACF and PACF plots were used to identify potential ARIMA parameters.

library(tseries)

# Transform to log returns
log_returns <- diff(log(KasinathCA))

# Plot log return series
plot(log_returns,
main = "DAX Log Returns - 24MID0124",
xlab = "Year",
ylab = "Log Return")

# Remove NAs and perform ADF test
log_returns_clean <- na.omit(log_returns)
adf.test(log_returns_clean)

# Set 1x2 plotting window for ACF and PACF
par(mfrow = c(1, 2))

# ACF plot - identifies MA component
acf(log_returns_clean,
main = "ACF - DAX Log Returns - 24MID0124")

# PACF plot - identifies AR component
pacf(log_returns_clean,
main = "PACF - DAX Log Returns - 24MID0124")

# Reset layout
par(mfrow = c(1, 1))
