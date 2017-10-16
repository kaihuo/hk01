#' Calculate compounded returns
#'
#' This function takes a vector of prices to calculate compounded return for each time unit.
#'
#' @param price_vector A vector of numeric prices.
#' @return A vector of compounded returns.
#' @examples
#' prices <- c(1, 1.1, 1.3, 1.2, 1.5, 1.9, 1.8, 2.0)
#' compounded_return(prices)
#' @export

compounded_return <- function(price_vector) {
  comp_return <- vector(mode = "numeric", length = length(price_vector))
  for(i in 1:length(price_vector)) {
    comp_return[i] <- ifelse(i == 1, NA,
                             log(price_vector[i]) - log(price_vector[i - 1]))
  }
  return(comp_return)
}


