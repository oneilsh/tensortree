% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.tidytensor.R
\name{as.tidytensor}
\alias{as.tidytensor}
\title{Convert a vector, matrix, or array to a tidytensor type.}
\usage{
as.tidytensor(x, ...)
}
\arguments{
\item{x}{input to convert to a tidytensor.}

\item{...}{additional arguments to be passed to or from methods (ignored).}
}
\value{
a new tidytensor.
}
\description{
Given a vector, matrix, or array, returns a tidytensor.
If given a vector, converts to a 1-d array supporting dim(), matrices are left as matrices,
and in all cases the class 'tidytensor' is added.
}
\details{
Matrices are synonymous with 2-d arrays, so these are left as is. Vectors are converted
to 1-d arrays so that they can support dim().
}
\examples{
# From an array (representing e.g. 30 26x26 images (30 sets of 26 rows of 26 pixels))
a <- array(rnorm(30 * 26 * 26), dim = c(30, 26, 26))
t <- as.tidytensor(a)
ranknames(t) <- c("sample", "row", "pixel")
print(t)

# From a matrix (representing e.g. a 26x26 image (26 rows of 26 pixels))
m <- matrix(rnorm(26 * 26), nrow = 26, ncol = 26)
t <- as.tidytensor(m)
ranknames(t) <- c("row", "pixel")
print(t)

# From a vector (representing e.g. 26 pixel values)
v <- rnorm(26)
t <- as.tidytensor(v)
ranknames(t) <- c("pixel")
print(t)
}
\seealso{
\code{\link{tt}}, \code{\link{ranknames}}.
}
