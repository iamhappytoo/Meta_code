llist=NULL
##(data, address of this node, and address of next node (i.e., node.next))
llist[[1]]=c(1,1,NaN)
#llist[[2]]=c(2,2,3)
#llist[[3]]=c(3,3,2)
logictest <- function(llist){
  node=llist[[1]] ##head
  addlist=NULL; cnt=1; addlist[cnt]=node[2]; ##current address
  nexti=node[3] ##node.next
  while(!is.na(nexti)){
    node=llist[[node[3]]] ##current=node.next
    cnt=cnt+1
    addlist[cnt]=node[2]
    if(length(unique(addlist))<length(addlist)){
      return(TRUE)
    }
  }
  if(is.na(nexti)){return(FALSE)}
}
logictest(llist)
