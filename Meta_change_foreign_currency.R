# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
canGetExCg <- function(tM, denom){
  if(tM<=min(denom)){
    return(FALSE)
  }else{
    for(i in 1:length(denom)){
      if(tM%%denom[i]==0){
        return(TRUE)
      }
    }
    output=0
    for(i in 1:length(denom)){
      if(output==1){
        return(TRUE)
      }else{
        output=max(output,canGetExCg(tM-denom[i],denom))
      }
    }
    if(output==0){
      return(FALSE)
    }else{
      return(TRUE)
    }
  }
}
tM=75
denom=c(4,17,28)
canGetExCg(tM,denom)