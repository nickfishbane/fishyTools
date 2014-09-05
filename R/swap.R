#' Replace values in a vector
#' 
#' @param vec a vector
#' @param from a vector of values that will be replaced in \code{vec}, if present
#' @param to a vector of the same length as \code{from}, with replacement values for each 
#'   corresponding element in the same index
#' @return a vector of the same length as \code{vec}, with values replaced
#' @examples
#' x <- LETTERS[1:10]; print(x)
#' swap(x, c('J' 'K', 'B'), c('j', 'k', 'b'))
#' @export


swap <- function(vec, from, to){
  library(plyr)
  
  if(length(from) != length(to))
    stop('to and from must be of the same length')
  
  ix <- which(from %in% vec)
  from <- from[ix]
  to <- to[ix]
  
  ix <- laply(from, function(x) which(vec == x))
  vec[ix] <- to
  vec
}