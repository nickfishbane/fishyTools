#' Collect all garbage, i.e. clear temporary memory. Keeps running /code{gc()} until output
#'  doesn't change
#' @export
  
my.gc <- function () 
{
    while (gc()[2, 4] != gc()[2, 4] | gc()[1, 4] != gc()[1, 4]) {
    }
}
