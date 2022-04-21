#' atm_conductance
#'
#' @param v numeric - windspeed (cm/s)
#' @param h numeric - vegetation height (cm)
#' @param k_0 numeric - coefficient 
#' @param k_d numeric - coefficient
#'
#' @return c_at: atmospheric conductance
#' 
atm_conductance <- function(v, h, k_0 = 0.1, k_d = 0.7) {
  z_d <- k_d * h
  z_0 <- k_0 * h
  z_m <- h + 200
  
  c_at <- v / (6.25 * log(((z_m - z_d)/z_0))^2)
  
  return(list(c_a = c_at))
}