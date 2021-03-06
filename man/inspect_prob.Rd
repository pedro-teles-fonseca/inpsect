% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect_.R
\name{inspect_prob}
\alias{inspect_prob}
\title{Validate vectors of probabilities}
\usage{
inspect_prob(x, allow_nas = TRUE, warning_nas = TRUE)
}
\arguments{
\item{x}{An arbitrary object.}

\item{allow_nas}{Logical value. If \code{TRUE} then \code{NA} and \code{NaN} values in \code{x} are allowed. If \code{FALSE}, execution is stopped and an error message is thrown in case there are \code{NA} or \code{NaN} values in \code{x}.}

\item{warning_nas}{Logical value. If \code{TRUE} then the presence of \code{NA} or \code{NaN} values in \code{x} generates a warning message. \code{NA} and \code{NaN} values pass silently otherwise (if \code{allow_nas} is set to \code{TRUE}).}
}
\value{
\code{inspect_prob} does not return any output. There are three possible outcomes:
\itemize{
\item The call is silent if:
\itemize{
\item \code{x} is a numeric vector of valid probability values and there are no \code{NA} or \code{NaN} values in \code{x}.
\item \code{x} is a numeric vector of valid probability values, there are some \code{NA} or \code{NaN} values in \code{x}, \code{allow_nas} is set to \code{TRUE} and \code{warning_nas} is set to \code{FALSE}.
}
\item An informative warning message is thrown if \code{x} is a numeric vector of valid probability values, there are some \code{NA} or \code{NaN} values in \code{x} and both \code{allow_nas} and \code{warning_nas} are set to \code{TRUE}.
\item An informative error message is thrown and the execution is stopped if:
\itemize{
\item \code{x} is not a numeric vector of valid probability values.
\item \code{x} is a numeric vector of valid probability values, there are some \code{NA} or \code{NaN} values in \code{x} and \code{allow_nas} is set to \code{FALSE}.
}
}
}
\description{
\code{inspect_prob} checks if an object is a numeric vector of valid probability values. This can be useful to validate inputs, intermediate calculations or outputs in user-defined functions.
}
\details{
\code{inspect_prob} conducts a series of tests to check if \code{x} is a numeric vector of valid probability values. Namely, \code{inspect_prob} checks if:
\itemize{
\item \code{x} is \code{NULL} or empty.
\item \code{x} is an atomic vector.
\item \code{x} is numeric.
\item \code{x} has \code{NA} or \code{NaN} values.
\item The values of \code{x} are in the [0, 1] interval.
}
}
\examples{
# Calls that pass silently:
x1 <- c(0.1, 0.2, 0.3, 0.4, 0.5)
x2 <- c(0.1, 0.2, 0.3, 0.4, 0.5, NA)
inspect_prob(x1)
inspect_prob(x2, warning_nas = FALSE)
inspect_prob(x2, allow_nas = TRUE, warning_nas = FALSE)

# Calls that throw an informative warning message:
y <- c(0.1, 0.2, NA, 0.4, 0.5)
try(inspect_prob(y))
try(inspect_prob(y, allow_nas = TRUE))
try(inspect_prob(y, allow_nas = TRUE, warning_nas = TRUE))

# Calls that throw an informative error message:
z1 <- c(-0.9, 0, 0.1, 0.2, 0.3, 0.4, 0.5)
try(inspect_prob(z1))
z2 <- c(NA, 0, 0.1, 0.2, 0.3, 0.4, 0.5)
try(inspect_prob(z2, allow_nas = FALSE))
mylist <- list(NULL, TRUE, factor(.5), matrix(0.5),
         "0.5", list(0.5), NA, NaN, numeric(0), 1.1, -0.5)
try(inspect_prob(mylist[[1]]))
try(inspect_prob(mylist[[2]]))
try(inspect_prob(mylist[[3]]))
try(inspect_prob(mylist[[4]]))
try(inspect_prob(mylist[[5]]))
try(inspect_prob(mylist[[6]]))
try(inspect_prob(mylist[[7]]))
try(inspect_prob(mylist[[8]]))
try(inspect_prob(mylist[[9]]))
try(inspect_prob(mylist[[10]]))
try(inspect_prob(mylist[[11]]))

}
\seealso{
\itemize{
\item \code{\link[inspector]{inspect_par_bernoulli}} to check if an object is a valid Bernoulli/Binomial proportion.
\item \code{\link[inspector]{inspect_par_multinomial}} to check if an object is a numeric vector of valid Multinomial proportions.
}
}
