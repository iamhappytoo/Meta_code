#!/bin/python3

import math
import os
import random
import re
import sys
from collections import defaultdict
#
# Complete the 'quickestWayUp' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. 2D_INTEGER_ARRAY ladders
#  2. 2D_INTEGER_ARRAY snakes
#

def quickestWayUp(ladders, snakes):
    # Write your code here
    graph=addEdge(ladders,snakes)
    visited=[False]*100
    visited[0]=True
    queue=[]
    queue.append(0)
    level=[0]*100
    level[0]=0
    while queue:
        s=queue.pop(0)
        if s == 99:
            return level[s]
        if len(graph[s])>0:
            for u in graph[s]:
                if visited[u]==False:
                    level[u]=level[s]+1
                    visited[u]=True
                    queue.append(u)
    return -1
def addEdge(ladders,snakes):
    graph=defaultdict(list)
    for i in range(94):
            for j in range(i+1,i+7):
                graph[i].append(j)
    for i in range(94,99):
        for j in range(i+1,100):
            graph[i].append(j)
                        
    for i,j in ladders:
        i-=1
        j-=1
        graph[i]=[]
        for m in range(1,7):
            if i-m >= 0 and len(graph[i-m]):
                graph[i-m][m-1]=j
    
    for i,j in snakes:
        i-=1
        j-=1
        graph[i]=[]
        for m in range(1,7):
            if i-m >= 0 and len(graph[i-m]):
                print(graph[i-m])
                graph[i-m][m-1]=j
    
    return graph
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input().strip())

    for t_itr in range(t):
        n = int(input().strip())

        ladders = []

        for _ in range(n):
            ladders.append(list(map(int, input().rstrip().split())))

        m = int(input().strip())

        snakes = []

        for _ in range(m):
            snakes.append(list(map(int, input().rstrip().split())))

        result = quickestWayUp(ladders, snakes)

        fptr.write(str(result) + '\n')

    fptr.close()
