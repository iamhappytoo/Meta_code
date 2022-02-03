# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
getTotalTime <- function(arr){
  arr=sort(arr,decreasing=TRUE)
  len=length(arr)
  sum=(arr[1]+arr[2])*(len-1)
  if(len>2){
    for(i in 3:len){
      sum=sum+arr[i]*(len-(i-1))
    }
  }
  return(sum)
}
arr=c(4,2,1,3)
getTotalTime(arr)