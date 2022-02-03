# Enter your code here. Read input from STDIN. Print output to STDOUT
quicksort <- function(arr){
  if(length(arr)==1){
    print(arr)
    return(arr)
  }else{
    pivot=arr[1]
    left=which(arr<pivot)
    right=which(arr>pivot)
    if(length(left)>0){
      arrleft=arr[left]
      if(length(left)>1){
        arrleft=quicksort(arrleft)
      }
    }
    if(length(right)>0){
      arrright=arr[right]
      if(length(right)>1){
        arrright=quicksort(arrright)
      }
    }
    pivot=arr[which(arr==pivot)]
    if(length(left)*length(right)>0){
      out=c(arrleft,pivot,arrright)
    }else if(length(left)>0){
      out=c(arrleft,pivot)
    }else if(length(right)>0){
      out=c(pivot,arrright)
    }else{
      out=pivot
    }
    if(length(out)>1){
      print(out)
    }
    return(out)
  }
}
arr=c(5,8,1,3,7,7,9,2)
out=quicksort(arr)
