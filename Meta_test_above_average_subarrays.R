aboveAverageSubarrays <- function(A){
  llist=list()
  count=1
  arr=seq(1:length(A))
  for(i in 1:length(A)){
    for(j in i:length(A)){
      ind=seq(i,j)
      ind1=arr[-ind]
      if(length(ind1)>0){
        mean1=mean(A[ind])
        mean2=mean(A[ind1])
        if(length(mean2)==0){
          mean2=0
        }
        if(mean1>mean2){
          llist[count]=list(c(i,j))
          count=count+1
        }
      }else{
        llist[count]=list(c(i,j))
        count=count+1
      }
    }
  }
  for(i in 1:length(llist)){
    print(llist[[i]])
  }
}
A=c(3,4,2)
aboveAverageSubarrays(A)
