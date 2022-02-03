bigsum <- function(n,arr){
  sum=0
  for(i in 1:n){
    sum=sum+arr[i]
  }
  return(sum)
}
arr=c(1000000001,1000000002,1000000003,1000000004,1000000005)
n=5
bigsum(5,arr)
