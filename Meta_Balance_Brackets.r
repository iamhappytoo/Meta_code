# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
isBalanced<- function(s){
  vec=unlist(strsplit(s,split=""))
  stack=NULL
  cnt=1
  if(length(vec)==0){
    return(True)
  }else{
    for(i in 1:length(vec)){
      if(i==1){
        stack[[cnt]]=vec[i]
        cnt=cnt+1
      }else{
        if(length(stack)==0){
          stack[[cnt]]=vec[i]
          cnt=cnt+1
        }else if(vec[i]!=oppo(stack[[cnt-1]])){
          stack[[cnt]]=vec[i]
          cnt=cnt+1
        }else if(vec[i]==oppo(stack[[cnt-1]])){
          stack=stack[-(cnt-1)]
          cnt=cnt-1
        }
      }
    }
    if(length(stack)>0){
      return(FALSE)
    }else{
      return(TRUE)
    }
  }
}
oppo <- function(char){
  chardict=c("{","[","(",")","]","}")
  ind=which(chardict==char)
  oppo=chardict[7-ind]
  return(oppo)
}
s="{[()}"
isBalanced(s)
