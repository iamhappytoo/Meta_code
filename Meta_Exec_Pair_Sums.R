# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
numberofWays <- function(arr, k){
  sum=0
  for(i in 1:floor(k/2-0.5)){ ## 3 => 1, 4 => 1
    m=length(which(arr==i))
    n=length(which(arr==(k-i)))
    sum=sum+m*n
  }
  if(k%%2==0){
    cnt=length(which(arr==k/2))
    sum=sum+cnt*(cnt-1)/2
  }
  return(sum)
}

arr=c(1,5,3,3,3)
numberofWays(arr,6)