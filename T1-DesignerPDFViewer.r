countarea <- function(h, word){
  reference=tolower(LETTERS)  
  vec=unlist(strsplit(word,split=""))
  hvec=rep(0,length(vec))
  for(i in 1:length(vec)){
    ind=which(reference %in%vec[i])
    hvec[i]=h[ind]
  }
  area=max(hvec)*length(vec)
  return(area)
}
h=as.numeric(unlist(strsplit("1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5",split=" ")))
word="abc"
countarea(h,word)