# tab_mult

tab_mult <- function(n) {
  matrix(rep(1:n, n), n, n, byrow = T) * c(1:n)
}
