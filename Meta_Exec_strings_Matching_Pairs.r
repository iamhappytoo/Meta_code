# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
findmatch <- function(s,t){
  match=NULL
  for(i in 1:length(s)){
    if(s[i]==t[i]){
      match=c(match,i)
    }
  }
  return(match)
}
matchingPairs <- function(s,t){
  vecs=unlist(strsplit(s,split=""))
  vect=unlist(strsplit(t,split=""))
  N=length(vecs)
  match <- findmatch(vecs,vect) ##save the position of match instead of element
  sequence=seq(1,N)
  ind=which(!sequence%in%match)
  if(length(ind)==0){
    return(length(match)-2)
  }else{
    saves=vecs[ind]
    savet=vect[ind]
    ##find if there are same elements in the non-matching part of s and t
    pos_s=which(saves%in%savet)
    pos_t=which(savet%in%saves)
    sameele=unique(saves[pos_s])
    if(length(sameele)==0){ ##including only one unmatch
      return(length(match))
    }else if(length(sameele)==1){
      return(length(match)+1)
    }else if(length(sameele)>=2){
      ##if any two of them have the same position set 
      for(i in 1:(length(sameele)-1)){
        for (j in (i+1):length(sameele)){
          ##position in s[pos_s]
          saves_pos_i=which(saves==sameele[i])
          saves_pos_j=which(saves==sameele[j])
          savet_pos_i=which(savet==sameele[i])
          savet_pos_j=which(savet==sameele[j])
          if(length(intersect(saves_pos_i,savet_pos_j)) & length(intersect(saves_pos_j,savet_pos_i))){
            return(length(match)+2)
          }
        }
      }
    } 
  }
}
s="abcd";
t="adcb"
matchingPairs(s,t)
