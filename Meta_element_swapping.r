# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
findMinArray <- function(arr, k){
  len=length(arr)
  while(k>0){
    if(k>len){
      ind=which(arr==min(arr))
      arr=swap(arr,ind)
      k=k-(ind-1)
    }else{
      ind=which(arr[1:(k+1)]==min(arr[1:(k+1)]))
      arr=swap(arr,ind)
      k=k-(ind-1)
    }
  }
  return(arr)
}
swap <- function(arr,ind){
  len=length(arr)
  newarr=rep(0,len)
  if(ind==1){
    return(arr)
  }else{
    newarr[1]=arr[ind]
    newarr[2:ind]=arr[1:(ind-1)]
    if(ind<len){
      newarr[(ind+1):len]=arr[(ind+1):len]
    }
  }
  return(newarr)
}
n=5
k=3
arr=c(8,9,11,2,1)
findMinArray(arr,k)
