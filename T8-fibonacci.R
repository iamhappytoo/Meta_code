term=rep(0,100)
fib <- function(n){
  if(n==1){
    return(0)
  }
  if(n==2){
    return(1)
  }
  if(term[n] !=0){
      return(term[n])
  }else{
      term[n]=fib(n-1)+fib(n-2)
      return(term[n])
  }
}
for(i in 1:10){
  print(fib(i))
}

