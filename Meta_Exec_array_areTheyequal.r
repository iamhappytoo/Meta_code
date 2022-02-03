# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
areTheyequal <- function(arr_a,arr_b){
  maxa=max(arr_a); maxb=max(arr_b); mina=min(arr_a); minb=min(arr_b)
  if((maxa!=maxb)|(mina!=minb)|length(arr_a)!=length(arr_b)){
    return(FALSE)
  }else{
    savelista=rep(0,maxa+1)
    savelistb=rep(0,maxb+1)
    for(i in 1:length(arr_a)){ ##to save 0, move everything plus 1
      inda=arr_a[i]+1 ##if 0, ind=1, if i, ind=2
      indb=arr_b[i]+1
      savelista[inda]=savelista[inda]+1
      savelistb[indb]=savelistb[indb]+1
    }
    ++ 
    j=1
    while((j<=length(savelista)) &(savelista[j]==savelistb[j])){
      j=j+1
    }
    if(j!=(length(savelista)+1)){
      return(FALSE)
    }else{
      return(TRUE)
    }
  }
}
A=c(1,2,3,1000000000); B=c(1,1000000000,3,2)
areTheyequal(A,B)
