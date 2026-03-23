# Required packages:
# install.packages("forecast")
# install.packages("tseries")

# Title: DAX Time Series â€“ Loading, Exploration & Stationarity Test
# Aim: To load the EuStockMarkets dataset, extract the DAX index, explore its properties, plot it, and perform the Augmented Dickey-Fuller (ADF) test for stationarity.
# Procedure: 1. Install and load forecast and tseries packages.2. Load the EuStockMarkets dataset and extract the DAX column.3. Convert DAX data to a time series object.4. Display summary statistics, start, end, and frequency.5. Plot the original DAX time series.6. Perform ADF test to check stationarity.
# Result: The DAX time series was successfully loaded, explored, and plotted. The ADF test confirmed that the original series is non-stationary.

library(forecast)
library(tseries)

# Install and load required packages

# Load EuStockMarkets dataset
data("EuStockMarkets")

# Extract DAX index column
dax_data <- EuStockMarkets[, "DAX"]

# Convert to time series object
KasinathCA <- ts(dax_data,
start     = start(dax_data),
frequency = frequency(dax_data))

# Summary statistics
summary(KasinathCA)

# Start, end, and frequency
start(KasinathCA)
end(KasinathCA)
frequency(KasinathCA)

# Plot original DAX time series
plot(KasinathCA,
main = "DAX Stock Index - 24MID0124",
xlab = "Year",
ylab = "Closing Price")

# ADF test on original series
adf.test(KasinathCA)
