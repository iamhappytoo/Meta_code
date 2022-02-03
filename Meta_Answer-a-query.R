answerqueries <- function(queries){
  arr=NULL
  count=1
  output=rep(0,length(which(queries[,1]==2)))
  for(i in 1:nrow(queries)){
    if(queries[i,1]==1){
      arr=c(arr,queries[i,2])
    }
    if(queries[i,1]==2){
      ind=which(arr>queries[i,2])
      output[count]=min(arr[ind])
      count=count+1
    }
  }
  return(output)
}
queries=matrix(c(1,2,2,1,1,3,2,1),ncol=2,byrow=TRUE)
answerqueries(queries)
