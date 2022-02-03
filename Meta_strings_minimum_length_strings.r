# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
minLengthSubstring <- function(s,t){
  s=unlist(strsplit(s,split=''))
  t=unlist(strsplit(t,split=''))
  saves=NULL
  saveind=NULL
  for(i in 1:length(s)){
    if(s[i]%in%t){
      saves=c(saves,s[i])
      saveind=c(saveind,i)
    }
  } ##(d,1),(f,5)
  ##get the subset from df that makes up t
  min=0
  len=length(t) #2
  sortt=paste0(sort(t),collapse='')
  for(i in 1:(length(saveind)-1)){
    subdf=saves[i:(i+len-1)]
    subind=saveind[1:(i+len-1)]
    if(paste0(sort(subdf),collapse='')==sortt){
      thismin=max(subind)-min(subind)+1
      if(min==0){
        min=thismin
      }else{
        if(min>thismin){
          min=thismin
        }
      }
    }
  }
  if(min==0){
    return(FALSE)
  }else{
    return(min)
  }
}
s="dcbefebce"
t="fd"
minLengthSubstring(s,t)
