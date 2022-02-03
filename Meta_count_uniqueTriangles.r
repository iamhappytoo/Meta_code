# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
#sort, then compare into strings to find the same ones
countDistinctTriangles <- function(arr){
  N=nrow(arr)
  savestring=rep(0,N)
  for(i in 1:N){
    arr[i,]=sort(arr[i,])
    savestring[i]=paste0(as.character(arr[i,]),collapse="#")
  }
  print(savestring)
  return(length(unique(savestring)))
}
arr=rbind(c(5,8,9),c(8,9,5),c(5,8,9))
countDistinctTriangles(arr)