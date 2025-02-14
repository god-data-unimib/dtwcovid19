% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fixcovid19.r
\name{create_weight}
\alias{create_weight}
\title{Create Weight}
\usage{
create_weight(data, season_target, seasons, n_week_euclidean, weight)
}
\arguments{
\item{data}{Dataframe. See \code{details}}

\item{season_target}{Character. Target Season.}

\item{seasons}{Character Vector. A vector with the previous Seasons.}

\item{n_week_euclidean}{Numeric. The number of observations we want to calculate from the last one.}
}
\value{
The output is a named numeric vector. Weights to apply for each season when calculating the probs.
}
\description{
This function create the weights. This is an internal function of \code{\link{create_dynamic_weight}}
and it is not supposed to be called directly
}
\details{
The input \code{data} has to be a dataframe (or a tibble) with at least the following columns:

\describe{
  \item{season}{\code{character} class. A tibble with the season detail}
  \item{week_count}{\code{numeric} class. A tibble with the week difference from the end date}
  \item{qty}{\code{numeric} class. A tibble with the qty by season-date}
  \item{qty_cumsum}{\code{numeric} class. A tibble with the cumulative qty by season-date}
}
}
