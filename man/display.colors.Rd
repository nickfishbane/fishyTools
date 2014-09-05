\name{display.colors}
\alias{display.colors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
display.colors(cols)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cols}{
%%     ~~Describe \code{cols} here~~
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
function (cols) 
{
    require(ggplot2)
    require(grid)
    n <- length(cols)
    df <- data.frame(x = factor(cols, levels = cols, labels = cols), 
        y = rep(1, n), color = cols)
    ggplot(df, aes(x = x, y = y, fill = x)) + geom_tile() + scale_fill_manual(values = cols) + 
        theme(legend.position = "none", text = element_text(color = "black"), 
            axis.ticks = element_blank(), axis.text = element_blank(), 
            axis.title = element_blank(), panel.margin = unit(c(0, 
                0, 0, 0), "in"), plot.margin = unit(c(0, 0, 0, 
                0), "in"), panel.grid = element_blank(), panel.background = element_rect("white"), 
            axis.ticks.x = element_line()) + geom_text(aes(x = x, 
        y = y, label = color), angle = 45, size = rel(10))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
