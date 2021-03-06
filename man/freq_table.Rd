% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/freq_table.R
\name{freq_table}
\alias{freq_table}
\title{Compute Frequency Table}
\usage{
freq_table(data, ..., vars = NULL, na.rm = TRUE)
}
\arguments{
\item{data}{a data frame}

\item{...}{One or more unquoted expressions (or variable names) separated by
commas. Used to specify variables of interest.}

\item{vars}{optional character vector containing variable names.}

\item{na.rm}{logical value. If TRUE (default), remove missing values in the
variables used to create the frequency table.}
}
\value{
a data frame
}
\description{
compute frequency table.
}
\examples{
data("ToothGrowth")
ToothGrowth \%>\% freq_table(supp, dose)
}
