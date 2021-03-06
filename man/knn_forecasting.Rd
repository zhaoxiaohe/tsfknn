% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecasting.R
\name{knn_forecasting}
\alias{knn_forecasting}
\title{Time series forecasting using KNN regression}
\usage{
knn_forecasting(timeS, h, lags = NULL, k = NULL, msas = "MIMO",
  cf = "mean")
}
\arguments{
\item{timeS}{A numeric vector or time series of class \code{ts}.}

\item{h}{A positive integer. Number of values to forecast.}

\item{lags}{An integer vector in increasing order expressing the lags used
as autoregressive variables.}

\item{k}{A positive integer. The k parameter in KNN regression. A vector of
k values can also be used. In that case, the forecast is the average
of the forecasts produced by the different models with the different k
parameters.}

\item{msas}{A string indicating the Multiple Step Ahead Strategy used when
more than one value is predicted. It can be "recursive" or "MIMO".}

\item{cf}{A string. It indicates the combination function used to aggregate
the targets associated with the nearest neighbors. It can be "mean" or
"median".}
}
\value{
An object of class "knnForecast".
}
\description{
It applies KNN regression to forecast the future values of a time series.
The lags used as autoregressive variables are set with the \code{lags}
parameter. If the user does not set the number of nearest neighbors and
the lags, these values are selected automatically.
}
\examples{
pred <- knn_forecasting(USAccDeaths, h = 12, lags = 1:12, k = 2)
pred$prediction # To see a time series with the forecasts
plot(pred) # To see a plot with the forecast
}
