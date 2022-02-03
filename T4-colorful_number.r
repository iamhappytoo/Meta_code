iscolornum<- function(num){
  vec=unlist(strsplit(as.character(num),split=""))
  if(length(unique(vec))<length(vec)){
    return(FALSE)
  }else{
    set=powerset(vec)
    tablemul=NULL
    for(i in 1:length(set)){
      tempmul=mul(set[[i]])
      if(tempmul %in% tablemul){
        return(FALSE)
      }else{
        tablemul=c(tablemul,tempmul)
      }  
    }
    return(TRUE)
  }
}

powerset <- function(vec){
  set=list()
  cnt=1
  for(i in 1:length(vec)){
    for(j in 1:(length(vec)-i+1)){
      set[[cnt]]=vec[i:(i+j-1)]
      cnt=cnt+1
    }
  }
  return(set)
}

mul <- function(vec){
  if(length(vec)==1){
    return(vec)
  }else{
    outmul=as.numeric(vec[1])
    for(i in 2:length(vec)){
      outmul=outmul*as.numeric(vec[i])
    }
  }
  return(outmul)
}
num=3245
iscolornum(num)