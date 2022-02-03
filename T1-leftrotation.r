leftrot <- function(n, d, arr){
  newarr=rep(0,n)
  for(i in 1:length(arr)){
    newind=(i+n-d)%%n
    if(newind==0){newind=n}
    newarr[newind]=arr[i]
  }
  return(newarr)
}
arr=c(1,2,3,4,5)
newarr=leftrot(5,4,arr)
newarr