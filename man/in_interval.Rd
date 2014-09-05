\name{in_interval}
\alias{in_interval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
in_interval(x, low, high, low.closed = T, high.closed = T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{low}{
%%     ~~Describe \code{low} here~~
}
  \item{high}{
%%     ~~Describe \code{high} here~~
}
  \item{low.closed}{
%%     ~~Describe \code{low.closed} here~~
}
  \item{high.closed}{
%%     ~~Describe \code{high.closed} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, low, high, low.closed = T, high.closed = T) 
{
    if (low.closed) 
        foo <- x >= low
    else foo <- x > low
    if (high.closed) 
        foo2 <- x <= high
    else foo2 <- x < high
    foo & foo2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
