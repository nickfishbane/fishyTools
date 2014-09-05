#' A list version of grepl
#' 
#' This function extends grepl to searche a vector of regular expressions, to ask:
#' "which elements contain any/all of these regular expressions?"
#' @param vec character vector of regular expressions
#' @param ... arguments passed to /code{grepl}
#' @param fun specifies the aggregation of logicals to /code{vec}. If /code{'any'} is #' specified, /code{TRUE} will return if any of the regular expressions are found.
#'  If /code{'all'} is specified, /code{TRUE} will return only if each regular
#'   expression is found.
#' @return logical vector
#' @examples
#' words <- c('antihistamine', 'antechamber', 'octopus')
#' re <- c('anti', 'am')
#' my.grepl(re, words, fun = 'any')
#' my.grepl(re, words, fun = 'all')
#' @export

my.grepl <-
function(vec, ..., fun = c('any', 'all')){
    lis <- lapply(vec, function(x) grepl(x, ...))
    foo <- do.call(rbind, lis)
    fun <- get(match.arg(fun))
    apply(foo, 2, fun)
}
