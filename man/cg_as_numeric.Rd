% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vector.R
\name{cg_as_numeric}
\alias{cg_as_numeric}
\title{Coerce to a Numerical Vector}
\usage{
cg_as_numeric(x, name = NULL)
}
\arguments{
\item{x}{either a cg_node object or a numerical matrix or array.}

\item{name}{character scalar, name of the operation (optional).}
}
\value{
cg_operator object.
}
\description{
Coerce \code{x} to a one-dimensional numerical vector.
}
\note{
This function is identical to \code{cg_as_double}.
}
\seealso{
\link[base:double]{as.numeric}
}
\author{
Ron Triepels
}
