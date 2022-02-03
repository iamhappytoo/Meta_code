icecreamParlor <- function(m, arr) {
  # Write your code here
  for(i in 1:length(arr)){
    for(j in (i+1):length(arr)){
      if(arr[i]+arr[j]==m){
        return(c(i,j))
      }
    }
  }
}