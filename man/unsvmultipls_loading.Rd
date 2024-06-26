\name{unsvmultipls_loading}
\alias{unsvmultipls_loading}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Unsupervised multiset partial least squares loading}
\description{
This function computes unsupervised multiset partial least squares loading from the result of the "unsv_multipls" function.
}
\usage{
unsvmultipls_loading(unsvmpls)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{unsvmpls}{

  The following variables (P,T) are included in the unsvmpls object.

  P : A list of matrix with Multiset PLS coefficients in each column for each dataset

  T : A list of matrix with Multiset PLS scores in each column for each dataset

  }
}
\details{
The unsupervised multiset PLS loading and the p-value by statistical hypothesis testing is added to the unsvmpls object returned by the "unsv_multipls" function in this package.
}
\value{
The return value is a list object that contains the following elements:

Score : A list of matrix with Multiset PLS score for auxiliary variable in each column for each dataset

R : A list of matrix with Unsupervised multiset PLS loadings in each column for each dataset

p.value : A list of matrix with p-value of Unsupervised multiset PLS loading in each column for each dataset

}
\references{
Yamamoto H. (2022) Multiset partial least squares with rank order of groups for integrating multi-omics data, bioRxiv.
}
\author{
Hiroyuki Yamamoto
}
\examples{
data(whhl)
X <- whhl$X
tau <- rbind(c(0,1/4,1/4,1/4),c(1/4,0,1/4,1/4),c(1/4,1/4,0,1/4),c(1/4,1/4,1/4,0))

unsvmpls <- unsv_multipls(X,tau)

unsvmpls <- unsvmultipls_loading(unsvmpls)
unsvmpls$loading$R
unsvmpls$loading$p.value

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multivariate }

