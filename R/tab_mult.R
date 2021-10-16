#' Crea una tabla de multiplicar
#'
#' @param n (numeric) Hasta qué número se creará la tabla
#' @param simple (boolean) Solo resultado simple. Falso por defecto
#'
#' @return matrix
#' @export
#'
#' @examples
#'tab_mult(10)
#'tab_mult(5, simple = TRUE)
tab_mult <- function(n, simple = FALSE) {
  assertive::assert_is_numeric(n)

  prim_fac <- matrix(rep(1:n, n), n, n, byrow = T)
  sec_fac <- c(1:n)
  result <- prim_fac * sec_fac
  completo <- paste(prim_fac, "X", sec_fac, "=", result)

  if(simple) {
    return(result)
  } else {
    return(matrix(completo, n, n, byrow = T))
  }

}
