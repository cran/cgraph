% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/node.R
\name{cg_operator}
\alias{cg_operator}
\title{Add Operator}
\usage{
cg_operator(fun, inputs, name = NULL)
}
\arguments{
\item{fun}{cg_function object, function evaluated by the node.}

\item{inputs}{list, the nodes that are consumed by the operation.}

\item{name}{character scalar, name of the node (optional). In case argument \code{name} is missing, the node is added to the graph under an automatically generated name.}
}
\value{
cg_node object.
}
\description{
Add an operation node to the active graph.
}
\note{
Any objects that are supplied to argument \code{inputs} that are not cg_node objects are implicitly coerced to cg_constant objects.

The elements of argument \code{input} can be named to control how the arguments of the function provided to argument \code{fun} are machted when the function is evaluated. In case no names are provided, arguments are matched positionally.
}
\examples{
# Initialize a computational graph
graph <- cg_graph()

# Create a custom negation function
f <- cg_function(
    def = function(x) -x,
    grads = list(function(x, val, grad) -grad)
)

# Add a an operator with the negation function to the graph.
a <- cg_operator(f, list(10), name = "a")

}
\author{
Ron Triepels
}
