#' check if values are within a given interval
#' 
#' @param x a numeric vector
#' @param low,high the limits of the reference interval
#' @param low.closed,high.closed set to TRUE for inclusion of the corresponding limit as within the interval. e.g. to test an open interval (x,y), set both to FALSE; to test a closed interval [x,y], set both to TRUE
#' @return vector of logicals 
#' @examples
#' vec <- 1:10
#' in_interval(vec, 2, 8, T, T)
#' in_interval(vec, 2, 8, T, F)
#' in_interval(vec, 2, 8, F, F)
#' @export
#' 

in_interval <- function(x, low, high, low.closed = T, high.closed = T){
  if(low.closed) foo <- x >= low else foo <- x > low
  if(high.closed) foo2 <- x <= high else foo2 <- x < high
  foo & foo2
}
