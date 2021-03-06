% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/iv.plot.woe.r
\name{iv.plot.woe}
\alias{iv.plot.woe}
\title{Plot WoE patterns for variables}
\usage{
iv.plot.woe(iv)
}
\arguments{
\item{iv}{WoE data for variables - output from iv.mult with summary=FALSE (false is default for iv.mult)}
}
\description{
Plots calculated WoE for every variable
}
\examples{
iv.plot.woe(iv.mult(german_data,"gb"))
iv.plot.woe(iv.mult(german_data,"gb",vars=c("ca_status","housing","age","duration"),summary=FALSE))
}

