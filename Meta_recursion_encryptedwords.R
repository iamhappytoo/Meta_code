# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
encrypt <- function(s){
  vecs=unlist(strsplit(s,split=""))
  len=length(vecs)
  if(len<=2){
    output=s
    return(output)
  }else{ ##len>2
    if(len%%2 ==0){
      med=len/2
    }else{
      med=floor(len/2)+1
    }
    output=paste0(vecs[med],encrypt(paste0(vecs[1:(med-1)],collapse="")),encrypt(paste0(vecs[(med+1):len],collapse="")),collapse="")
    return(output)
  }
}
encrypt("facebook")
