insertNodeAtPosition <- function(llist, data, position){
  head=0 ##head
  for(i in 0:position){
    head=head+1
  }
  for(i in length(llist):(position+1)){
    llist[[i+1]]=llist[[i]]
  }
  llist[head]=data
  return(llist)
}
llist=NULL
llist[[1]]=16
llist[[2]]=13
llist[[3]]=7
data=1
position=2
a=insertNodeAtPosition(llist,data,position)
