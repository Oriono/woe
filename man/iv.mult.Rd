% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/iv.mult.r
\name{iv.mult}
\alias{iv.mult}
\title{Calculate Information Value for defined columns in data frame}
\usage{
iv.mult(df, y, vars = NULL, sql = FALSE, topbin = FALSE, tbcutoff = 0.1,
  tbpct = 0.02, verbose = FALSE, rcontrol = NULL)
}
\arguments{
\item{df}{data frame with at least two columns}

\item{y}{column (integer or factor) with binary outcome. It is suggested that y is factor with two levels "bad" and "good" If there are no levels good/bad than the following assumptions are applied - if y is integer, than 0=good and 1=bad. If y is factor than level 2 is assumed to mean bad and 1 good.}

\item{vars}{List of variables. If not specified, all character variables will be used}

\item{sql}{Option to output SQL transformation code. This has to be TRUE for \code{iv.replace.woe()/iv.trans.code()}}

\item{topbin}{Find top bins instead of WOE transformation.}

\item{tbcutoff}{Only select bins with inflation > tbcutoff.}

\item{tbpct}{Bins have to be at least tbpct of whole population.}

\item{verbose}{Prints additional details when TRUE. Useful mainly for debugging.}

\item{rcontrol}{Additional parameters used for rpart tree generation. Use \code{?rpart.control()} to get more details.}
}
\description{
Calculates information value for defined columns in given data frame. Columns can have numeric or character type (including factors).
}
\details{
Information Value (IV) is concept used in risk management to assess predictive power of variable.
IV is defined as:
WoE (Weight of Evidence) is defined as:
}
\examples{
iv.mult(german_data,"gb")
iv.mult(german_data,"gb",vars=c("ca_status","housing","job","duration"),sql=TRUE)
iv.mult(german_data,"gb",vars=c("ca_status","housing","job","duration"),topbin=TRUE)
# Use varlist() function to get all numeric variables
iv.mult(german_data,y="gb",vars=varlist(german_data,"numeric"))
}

