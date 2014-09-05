#' Get a random sample from a data object
#' 
#' Analogous to \code{head} and \code{tail}, but takes a random sample of rows
#' to display and prints them in order
#' 
#' @param x a vector, matrix, or data.frame
#' @param n an integer specifying the number of elements (vector) or rows 
#'   (matrix/data.frame) to display
#' @return a random subset of x. Elements will be in the same order as in x, and 
#'   output is of the same class as x.
#' @examples
#' \dontrun{
#' set.seed(123);
#'  peek(USArrests)
#'  } 
#' @export

peek <-
function(x, n = 6L){
    if(!(is.vector(x) | is.matrix(x) | is.data.frame(x)))
        stop('peek is currently only for vectors, matrices, and data frames')
    N <- ifelse(is.vector(x), length(x), nrow(x))
    ix <- sort(sample(1:N, min(c(n, N))))
    if(is.vector(x))
        return(x[ix]) else
            return(x[ix,])  
}
