#' Crea una tabla de multiplicar
#'
#' @param n (numeric) Hasta qué número se creará la tabla
#' @param simple (boolean) Solo resultado simple. Falso por defecto
#' @param bonita (boolean) Si la tabla que se imprime debe tener formato. Verdadero por defecto
#'
#' @return matrix
#' @export
#'
#' @examples
#'tab_mult(10)
#'tab_mult(5, simple = TRUE)
tab_mult <- function(n, simple = FALSE, bonita = TRUE) {
  assertive::assert_is_numeric(n)

  prim_fac <- matrix(rep(1:n, n), n, n, byrow = T)
  sec_fac <- c(1:n)
  result <- prim_fac * sec_fac
  completa <- paste(prim_fac, "x", sec_fac, "=", result)
  m_completa <- matrix(completa, n, n)

  if(simple) {
    return(result)
  } else {
    if(bonita) {
      return(knitr::kable(m_completa, "simple"))
    } else {
      return(m_completa)
    }
  }

}
