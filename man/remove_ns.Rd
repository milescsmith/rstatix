% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_ns.R
\name{remove_ns}
\alias{remove_ns}
\title{Remove Non-Significant from Statistical Tests}
\usage{
remove_ns(stat.test, col = NULL, signif.cutoff = 0.05)
}
\arguments{
\item{stat.test}{statistical test results returned by \code{rstatix}
functions or any data frame containing a p-value column.}

\item{col}{(optional) character specifying the column containing the p-value
or the significance information, to be used for the filtering step.
Possible values include: \code{"p"}, \code{"p.adj"}, \code{"p.signif"},
\code{"p.adj.signif"}. If missing, the function will automatically look for
p.adj.signif, p.adj, p.signif, p in this order.}

\item{signif.cutoff}{the significance cutoff; default is 0.05. Significance
is declared at \code{p-value <= signif.cutoff}}
}
\value{
a data frame
}
\description{
Filter out non-significant (NS) p-values from a statistical
  test. Can detect automatically p-value columns
}
\examples{
# Statistical test
stat.test <- PlantGrowth \%>\% wilcox_test(weight ~ group)
# Remove ns: automatic detection of p-value columns
stat.test \%>\% remove_ns()
# Remove ns by the column p
stat.test \%>\% remove_ns(col ="p")
}
