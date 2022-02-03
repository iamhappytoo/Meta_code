rotationalCipher <- function(string, int){
  uasc=LETTERS
  lasc=tolower(uasc)
  num=c(0,1,2,3,4,5,6,7,8,9)
  vec=unlist(strsplit(string, split=""))
  for(i in 1:length(vec)){
    if(!is.na(as.numeric(vec[i]))){ ##is a number
      vec[i]=as.character((as.numeric(vec[i])+int)%%10)
    }else{ ##is a letter
      if(vec[i]==toupper(vec[i])&(vec[i]%in%uasc)){##is a upper case vector
        ind=which(uasc%in%vec[i])
        indnew=(ind+int)%%26
        if(indnew==0){indnew=26}
        vec[i]=uasc[indnew]
      }else if((vec[i]==tolower(vec[i]))&(vec[i]%in%lasc)){ ##is a lower case vector
        ind=which(lasc%in%vec[i])
        indnew=(ind+int)%%26
        if(indnew==0){indnew=26}
        vec[i]=lasc[indnew]
      }else{
        vec[i]=vec[i]
      }
    }
  }
  return(paste(vec,collapse=""))
}
input = "Zebra-493?"
rotationFactor = 3
output=rotationalCipher(input,rotationFactor)
