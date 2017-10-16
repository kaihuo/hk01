#' Visualize the compounded returns
#'
#' This function uses `ggplot2` package to demonstrate a line plot of compounded returns in the period.
#'
#' Use `theme_classic()` for styling.
#'
#' @param return_vector A vector of compounded returns.
#' @param period A vector of time period. Default as 1:length(return_vector)
#' @return A line plot of compounded returns over the period.
#' @examples
#' prices <- c(1, 1.1, 1.3, 1.2, 1.5, 1.9, 1.8, 2.0)
#' returns <- compounded_return(prices)
#' return_viz(returns)
#' @export
#' @import ggplot2


return_viz <- function(return_vector, period = c(1:length(return_vector))) {
  dat <- data.frame(compounded_return = return_vector, time = period)
  ggplot(dat, aes(x = time, y = compounded_return)) + geom_line() + theme_classic() +
    ggtitle("Compounded Return")
    ggtitle("Compounded Return")
}
