# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
maxCandies <- function(arr,K){
  sum=0
  for(i in 1:K){
    sum=sum+max(arr)
    ind=which(arr==max(arr))
    arr[ind]=floor(arr[ind]/2)
  }
  return(sum)
}
arr=c(2,1,7,4,2,3)
K=3
maxCandies(arr,K)
b_heap=fibonacci_heap("integer")
b_heap=insert(b_heap,2:6,arr)
peek(b_heap)
pop(b_heap)
