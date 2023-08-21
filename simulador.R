library(purrr)
library(devtools)
library(usethis)

amostrador <- function(parametros){ # parametros tem que ser uma lista de objetos
  if (parametros$distribution == "poisson"){
    amostra = rpois(parametros$obs, parametros$lambda)
  }
  
  if (parametros$distribution == "normal"){
    amostra = rnorm(parametros$obs, parametros$mu, sqrt(parametros$sigma2))
  }
  
  if (parametros$distribution == "bernoulli"){
    amostra = rbinom(parametros$obs, size = 1, parametros$p)
  }
  
  return(amostra)
}
