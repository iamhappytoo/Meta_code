import math
# Add any extra import statements you may need here


# Add any helper functions you may need here


def minOperations(arr):
  # Write your code here
  if len(arr)==1:
    return 0
  if len(arr)==2:
    if arr[0] <= arr[1]:
      return 0
    else:
      return 1
  dest=sorted(arr)
  queue=[]
  queue.append([arr,0])
  visited=[]
  visited.append(str(arr))
  while queue:
      s,step=queue.pop(0)
      if s == dest:
        return step
      for i in range(2,len(s)):
        for start in range(0,len(s)-i+1):
          s1=reverse(s,start,i)
          if str(s1) not in visited:
            step1=step+1
            queue.append([s1,step1])
            visited.append(str(s1))
  return -1

def reverse(s,start,i):
  new=[]
  if start>0:
    new.extend(s[0:start])
  torev=s[start:(start+i)]
  new.extend(torev[::-1])
  if(start+i)<len(s):
    new.extend(s[(start+i):len(s)])
  return new

arr=[3,1,2]
minOperations(arr)
    
    
  











# These are the tests we use to determine if the solution is correct.
# You can add your own at the bottom.

def printInteger(n):
  print('[', n, ']', sep='', end='')

test_case_number = 1

def check(expected, output):
  global test_case_number
  result = False
  if expected == output:
    result = True
  rightTick = '\u2713'
  wrongTick = '\u2717'
  if result:
    print(rightTick, 'Test #', test_case_number, sep='')
  else:
    print(wrongTick, 'Test #', test_case_number, ': Expected ', sep='', end='')
    printInteger(expected)
    print(' Your output: ', end='')
    printInteger(output)
    print()
  test_case_number += 1

if __name__ == "__main__":
  n_1 = 5
  arr_1 = [1, 2, 5, 4, 3]
  expected_1 = 1
  output_1 = minOperations(arr_1)
  check(expected_1, output_1)

  n_2 = 3
  arr_2 = [3, 1, 2]
  expected_2 = 2
  output_2 = minOperations(arr_2)
  check(expected_2, output_2)
  
  # Add your own test cases here
  