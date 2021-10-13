#' Crea una tabla de multiplicar
#'
#' @param n numeric
#'
#' @return matrix
#' @export
#'
#' @examples
#'tab_mult(10)
tab_mult <- function(n) {
  assertive::assert_is_integer(n)
  matrix(rep(1:n, n), n, n, byrow = T) * c(1:n)
}
