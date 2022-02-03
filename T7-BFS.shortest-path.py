##Breadth First Search: shortest reach in undirected, weight all = 6 graph

#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'bfs' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER m
#  3. 2D_INTEGER_ARRAY edges
#  4. INTEGER s
#

def bfs(n, m, edges, s):
    # Write your code here
    graph=[[] for x in range(n+1)]
    
    for u,v in edges:
        graph[u].append(v)
        graph[v].append(u)
        
    visited=[False]*(n+1)
    dist=[-1]*(n+1)
    queue=[]
    queue.append(s)
    dist[s]=0
    while queue:
        s=queue.pop(0)
        visited[s]=True
        for v in graph[s]:
            if visited[v]==False:
                visited[v]=True
                dist[v]=dist[s]+6
                queue.append(v)
    dist.pop(0)
    dist.remove(0)
    return dist      
            
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    q = int(input().strip())

    for q_itr in range(q):
        first_multiple_input = input().rstrip().split()

        n = int(first_multiple_input[0])

        m = int(first_multiple_input[1])

        edges = []

        for _ in range(m):
            edges.append(list(map(int, input().rstrip().split())))

        s = int(input().strip())

        result = bfs(n, m, edges, s)

        fptr.write(' '.join(map(str, result)))
        fptr.write('\n')

    fptr.close()