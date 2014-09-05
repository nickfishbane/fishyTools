#' Display a vector of colors for viewing
#' 
#' @param cols A character vector of colors
#' @return An tiled image with color labels as a \code{gg} object
#' @examples 
#' display.colors(colors()[58:61])
#' 
#' m <- matrix(c(1,0.5, 0, 0.5, 0.2, 0.9, 0.2, 1, 1, 0.3, 0.6, 0.2), ncol = 3)
#' display.colors(rgb(m))
#' 
#' pal <- colorRampPalette(c('blue', 'yellow', 'pink'))
#' display.colors(pal(10))
#' @export


display.colors <- function(cols){
  require(ggplot2)
  require(grid)
  n <- length(cols)
  df <- data.frame(x = factor(cols, levels = cols, labels = cols), y = rep(1, n),
                   color = cols)
  ggplot(df, aes(x = x, y = y, fill = x)) + geom_tile() + 
    scale_fill_manual(values = cols) + 
    theme(legend.position = 'none', 
          text = element_text(color = 'black'),
          axis.ticks = element_blank(), 
          axis.text = element_blank(), axis.title = element_blank(), 
          panel.margin = unit(c(0,0,0,0), 'in'), 
          plot.margin = unit(c(0,0,0,0), 'in'), 
          panel.grid = element_blank(), 
          panel.background = element_rect('white'), 
          axis.ticks.x = element_line()) +
    geom_text(aes(x = x, y = y, label = color), angle = 45, size = rel(10))
}

