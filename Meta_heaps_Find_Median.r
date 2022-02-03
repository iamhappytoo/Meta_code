# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
findMedian <- function(arr){
  n=length(arr)
  output=rep(0,n)
  for(i in 1:n){
    output[i]=median(arr[1:i])
  }
  return(output)
}
n=4
arr=c(5,15,1,3)
findMedian(arr)
