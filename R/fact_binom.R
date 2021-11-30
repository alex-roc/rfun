estruc <- list(
  binom = "",
  op = "",
  ter1 = list(
    ter = "",
    pot = "",
    pot_des = c(),
    var = c(),
    coef = c(),
    coef_fac = c(),
    fac = c()
  ),
  ter2 = list(
    ter = "",
    pot = "",
    pot_des = c(),
    var = c(),
    coef = c(),
    coef_fac = c(),
    fac = c()
  ),
  binom_fac = list(
    com_fac = c(),
    com_var = c(),
    rest_1 = c(),
    rest_2 = c(),
    result = ""
  )
)


fact_binom <- function(binomio) {
  op <- stringr::str_extract(binomio, "\\+|-")
  ter_1 <- stringr::str_extract(binomio, "[0-9a-z^]+")
  ter_2 <- stringr::str_extract(binomio, "([0-9a-z^]+)$")


  ter_1_pot <- stringr::str_extract(binomio, "[a-z]\\^[0-9]")
  ter_1_pot_des <- rep(stringr::str_extract(ter_1_pot, "[a-z]",stringr::str_extract(ter_1_pot, "\\d" )))

}
