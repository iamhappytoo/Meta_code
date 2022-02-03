# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
minOverallAwkwardness <- function(arr){
  arr=sort(arr)
  newarr=getseating(arr)
  newarr=c(newarr,newarr[1])
  return(max(abs(diff(newarr))))
}
getseating <- function(arr){
  len=length(arr)
  output=rep(0,len)
  curr=round(len/2) ##5:: 3 4: 2
  output[curr]=arr[len]
  curr.left=curr-1
  curr.right=curr+1
  i=len-1
  while(i>=1){
    if(curr.left>0){
      output[curr.left]=arr[i]
      curr.left=curr.left-1
      i=i-1
    }
    if(curr.right<=len){
      output[curr.right]=arr[i]
      curr.right=curr.right+1
      i=i-1
    }
  }
  return(output)
}
n=4
arr=c(5,10,6,8,7,9,2)
minOverallAwkwardness(arr)