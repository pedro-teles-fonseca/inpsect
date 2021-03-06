% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect_.R
\name{inspect_log_base}
\alias{inspect_log_base}
\title{Validate logarithmic bases}
\usage{
inspect_log_base(x)
}
\arguments{
\item{x}{An arbitrary object.}
}
\value{
\code{inspect_log_base} does not return any output. There are two possible outcomes:
\itemize{
\item The call is silent if \code{x} is a numeric vector of \code{\link[base]{length}} 1 that is a valid logarithmic base.
\item An informative error message is thrown otherwise.
}
}
\description{
\code{inspect_log_base} checks if an object is a valid a logarithmic base. This can be useful to validate inputs in user-defined functions.
}
\details{
\code{inspect_log_base} conducts a series of tests to check if \code{x} is a valid logarithmic base. Namely, \code{inspect_log_base} checks if:
\itemize{
\item \code{x} is \code{NULL} or empty.
\item \code{x} is an atomic vector of \code{\link[base]{length}} 1.
\item \code{x} is numeric.
\item \code{x} is \code{NA} or \code{NaN}.
\item \code{x} is positive.
}
}
\examples{
# Calls that pass silently:
x1 <- 10
x2 <- exp(1)
x3 <- 0.5
inspect_log_base(x1)
inspect_log_base(x2)
inspect_log_base(x3)

# Calls that throw informative error messages:
mylist <- list(NULL, numeric(0), TRUE, factor(10),
        list(10), matrix(10), NaN, NA, -1, 0)
try(inspect_log_base(mylist[[1]]))
try(inspect_log_base(mylist[[2]]))
try(inspect_log_base(mylist[[3]]))
try(inspect_log_base(mylist[[4]]))
try(inspect_log_base(mylist[[5]]))
try(inspect_log_base(mylist[[6]]))
try(inspect_log_base(mylist[[7]]))
try(inspect_log_base(mylist[[8]]))
try(inspect_log_base(mylist[[9]]))
try(inspect_log_base(mylist[[10]]))

}
\seealso{
\itemize{
\item \code{\link[pcal]{bfactor_log_interpret}} for the interpretation of the logarithms of Bayes factors.
\item \code{\link[inspector]{inspect_bfactor_log}} to check if an object is a numeric vector of valid logarithmic Bayes factor values.
}
}
