insertionSort2 <- function(n, arr) {
  # Write your code here
  output=arr[1]
  for(i in 2:n){
    output=insert(output,arr[i])
    if(i<n){
      print(as.numeric(c(output,arr[(i+1):n])))
    }else{
      print(as.numeric(output))
    }
  }
}
insert <- function(output,num){
  len=length(output)
  if(num>output[len]){
    output=c(output,num)
  }else{
    i=1
    while((i<=len)&(length(output)==len)){
      if(output[i]<num){
        i=i+1
      }else{
        if(i==1){
          output=c(num,output)
        }else{
          output1=c(output[1:(i-1)],num,output[i:len])
          output=output1
        }  
      }
    }
  }
  return(output)
}
