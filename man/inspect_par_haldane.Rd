% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect_par_.R
\name{inspect_par_haldane}
\alias{inspect_par_haldane}
\title{Validate parameters for the Haldane distribution}
\usage{
inspect_par_haldane(x)
}
\arguments{
\item{x}{An arbitrary object.}
}
\value{
\code{inspect_par_haldane} does not return any output. There are two possible outcomes:
\itemize{
\item The call is silent if \code{x} is an eligible vector of parameters for the Haldane distribution.
\item An informative error message is thrown otherwise.
}
}
\description{
\code{inspect_par_haldane} checks if an object is an eligible vector of parameters for the Haldane distribution. This can be useful to validate inputs, intermediate calculations or outputs in user-defined functions.
}
\details{
\code{inspect_par_haldane} conducts a series of tests to check if \code{x} is an eligible vector of parameters for the Haldane distribution. Namely, \code{inspect_par_haldane} checks if:
\itemize{
\item \code{x} is \code{NULL} or empty.
\item \code{x} is an atomic vector
\item \code{x} is numeric
\item \code{x} has \code{NA} or \code{NaN} values.
\item All elements of \code{x} equal to 0.
}
}
\examples{
# Calls that pass silently:
x1 <- c(0, 0, 0)
x2 <- c(0, 0)
inspect_par_haldane(x1)
inspect_par_haldane(x2)

# Calls that throw an informative error message:
mylist <- list(NULL, factor(0, 0, 0),
  matrix(c(0, 0, 0)), c("0", "0", "0"), list(0, 0, 0), c(0, NA),
  c(0, NaN, 0), c(TRUE, FALSE), numeric(0), c(1, 0, 0))
try(inspect_par_haldane(mylist[[1]]))
try(inspect_par_haldane(mylist[[2]]))
try(inspect_par_haldane(mylist[[3]]))
try(inspect_par_haldane(mylist[[4]]))
try(inspect_par_haldane(mylist[[5]]))
try(inspect_par_haldane(mylist[[6]]))
try(inspect_par_haldane(mylist[[7]]))
try(inspect_par_haldane(mylist[[8]]))
try(inspect_par_haldane(mylist[[9]]))
try(inspect_par_haldane(mylist[[10]]))

}
\seealso{
\itemize{
\item \code{\link[inspector]{inspect_par_bernoulli}} to validate parameters for the Bernoulli/Binomial distribution.
\item \code{\link[inspector]{inspect_par_multinomial}} to validate parameters for the Multinomial distribution.
\item \code{\link[inspector]{inspect_par_beta}} to validate parameters for the Beta distribution.
\item \code{\link[inspector]{inspect_par_dirichlet}} to validate parameters for the Dirichlet distribution.
}
}
