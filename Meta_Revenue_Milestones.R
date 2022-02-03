# We don't provide test cases in this language yet. Please write your code below, and don't forget to test edge cases!
getMilestoneDays <- function(revenues, milestones){
  len=length(milestones)
  output=rep(-1,len)
  indm=1
  cumsum=0
  for(i in 1:length(revenues)){
    cumsum=cumsum+revenues[i]
    if(cumsum>=milestones[indm]){
      output[indm]=i
      indm=indm+1
    }
  }
  return(output)
}
revenues=seq(10,100,by=10)
milestones=c(100,200,500)
getMilestoneDays(revenues,milestones)