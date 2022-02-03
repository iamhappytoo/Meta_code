# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
countSubarray <- function(arr){
  output = rep(0,length(arr))
  for(i in 1:length(arr)){
    output[i]=findleft(arr,i)+findright(arr,i)-1
  }
  return(output)
}
findleft <- function(arr,i){
  ind=which(arr[1:i]>arr[i])
  if(length(ind)==0){
    return(i)
  }else{
    return(i-max(ind))
  }
}
findright <- function(arr,i){
  ind=which(arr[i:length(arr)]>arr[i])
  if(length(ind)==0){
    return(length(arr)-i+1)
  }else{
    return(min(ind)-1)
  }
}
arr=c(3,4,1,6,2)
countSubarray(arr)
