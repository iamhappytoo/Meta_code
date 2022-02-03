reverse <- function(head){ ##head has two elem, data, one is next add, itself's add, llist is a memory saving the linked list in R.
  if(is.na(head[3])){return(head)}
  else{
    allhead=c(0,0,0)
    allhead[3]=1 ##points to the start of the list
    prev=allhead
    start=head
    while(!is.na(start[3])){
      while(start[1]%%2!=0){
        prev=start
        start=llist[start[3]]
      }else{ ##start contains even number
        end=start
        while(!is.na(end[3]) & llist[end[3]][1]%%2==0){
          end=llist[end[3]]
        }
        llist[prev[2]][3]=getreverse(start,end)
        start=end
      }
    }
  }
  return(llist[prev[3]])
}
getreverse(start,end){
  ##Change the next pointer in llist elements
  curr=start
  prev=curr
  while(curr!=end){
    curr=llist[curr[3]]
    next=llist[curr[3]]
    llist[curr[2]][3]=llist[prev[2]][2]
    prev=curr
    curr=next
  }
  llist[start[2]][3]=end[2]
  return(prev[2])
}
printlist <- function(llist,head){
  curr=head
  while(!is.na(curr[3])){
    print(curr[1])
    curr=llist[curr[3]]
  }
}
list=rbind(c(1,1,2),
           c(2,2,3),
           c(8,3,4),
           c(9,4,5),
           c(12,5,6),
           c(16,6,7))
llist=NULL
for(i in 1:6){
  llist[[i]]=list[i,]
}
