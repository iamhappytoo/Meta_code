findPositions <- function(arr,x){ #n>=x
  listindex=as.list(seq(1:length(arr)))
  output=rep(0,x)
  for(i in 1:x){ #i is iteration cycles
    pop=arr[1:min(x,length(arr))]
    ind=min(which(pop==max(unlist(pop))))
    output[i]=listindex[[ind]]
    arr=getnewarr(arr,x,ind)
    listindex=getnewlistindex(listindex,x,ind)
  }
  return(output)
}
getnewarr <- function(arr,x,ind){
  if(length(arr)<x){
    arr=arr[-ind]
    for(i in 1:length(arr)){
      if(arr[[i]]>0){
        arr[[i]]=arr[[i]]-1
      }
    }
  }else{ ##length arr > x, means there are x elements to be processed
    i=1
    while(i<=x){
      if(i!=ind){
        if(arr[[i]]>0){
          arr[[length(arr)+1]]=arr[[i]]-1 
        }else{
          arr[[length(arr)+1]]=0
        }
      }
      i=i+1
    }
    arr=arr[-c(1:x)]
  }
  return(arr)
}
getnewlistindex <- function(arr,x,ind){
  if(length(arr)<x){
    arr=arr[-ind]
    for(i in 1:length(arr)){
      arr[[i]]=arr[[i]]
    }
  }else{ ##length arr > x, means there are x elements to be processed
    i=1
    while(i<=x){
      if(i!=ind){
        arr[[length(arr)+1]]=arr[[i]]
      }
      i=i+1
    }
    arr=arr[-c(1:x)]
  }
  return(arr)
}

llist=NULL
llist[[1]]=1; llist[[2]]=2; llist[[3]]=2; llist[[4]]=3; llist[[5]]=4; llist[[6]]=5;
findPositions(llist,5)
