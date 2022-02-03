# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
getBUDay <- function(gr){
  t=1
  sum=0
  N=length(gr)
  for(i in 1:N){
    sum=sum+gr[i]^t
  }
  while(sum<1e+9){
    t=t+1
    sum=0
    for(i in 1:N){
      sum=sum+gr[i]^t
    } 
  }
  return(t)
}
getBUDay(c(1.01,1.02))

##optimize it into binary search
# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
getBUDay <- function(gr){
  start=1
  end=2000
  target=1e+9
  N=length(gr)
  while(start < end){
    mid=floor((start+end)/2)
    sum=0
    for(i in 1:N){
      sum=sum+gr[i]^mid
    }
    if(sum>target){
      end=mid
    }else if(sum<target){
      start=mid+1
    }else{
      return(mid)
    }
  }
  return(start)
}
getBUDay(c(1.01,1.02))