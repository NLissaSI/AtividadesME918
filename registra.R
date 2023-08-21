for (i in 1:length(planos)){
  print(i)
}


for (i in 1:length(planos)) {
  print(i)
  print(planos[i])
}


for (i in 1:length(planos)) {
  if(i < 10){
    nome = paste0("resultados/simulacao0", i, ".RData")
  } else{
    nome = paste0("resultados/simulacao", i, ".RData")
  }
  
  distribution = planos[[i]]$distribution
  
  if(distribution == "bernoulli"){
    p = planos[[i]]$p
    obs = planos[[i]]$obs
    result = x[[i]]
    
    save(distribution, p, obs, file = nome)
  } 
  if(distribution == "poisson"){
    lambda = planos[[i]]$lambda
    obs = planos[[i]]$obs
    
    save(distribution, lambda, obs, file = nome)
  }
  if (distribution == "normal"){
    mu = planos[[i]]$mu
    sigma2 = planos[[i]]$sigma2
    obs = planos[[i]]$obs
    
    save(distribution,  mu, sigma2, obs, file = nome)
  }
}


#usethis::use_git_ignore("*.RData")
