# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
balancedSplitExists <- function(arr){
  if(length(arr)<=1){
    return(FALSE)
  }else{
    arr=sort(arr)
    len=length(arr)
    curr=round(len/2)
    ind=length(which(arr[(curr+1):len]==arr[curr]))
    curr=curr+ind
    sumleft=sum(arr[1:curr])
    sumright=sum(arr[(curr+1):len])
    while((curr <len) &(sumleft<=sumright)){
      if(sumleft==sumright){
        return(TRUE)
      }else{
        ind=length(which(arr[(curr+1):len]==arr[curr+1]))
        sumleft=sumleft+sum(arr[(curr+1):(curr+ind)])
        sumright=sumright-sum(arr[(curr+1):(curr+ind)])
        curr=curr+ind
      }        
    }
  }
  if((curr==len) | (sumleft>sumright)){
    return(FALSE)
  }
}

arr=c(12,7,6,7,6)
balancedSplitExists(arr)