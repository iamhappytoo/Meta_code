# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
findMaxProduct <-function(arr){
  output=c(-1,-1,multi(arr[1:3]))
  len=length(arr)
  if(len>3){
    memo=arr[1:3]
    min=min(memo)
    ind=min(which(memo==min))
    for(i in 4:len){
      if(arr[i]>min){
        memo=c(memo[-ind],arr[i])
        min=min(memo)
        ind=min(which(memo==min))
        output=c(output,multi(memo))
      }else{
        output=c(output,multi(memo))
      }
    }
  }
  return(output)
}
multi <- function(vec){
  return(vec[1]*vec[2]*vec[3])
}
arr=c(2,1,2,1,2)
findMaxProduct(arr)