# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

class MyQueue(object):

    def __init__(self):
        self.s1 = []
        self.s2 = []

    def push(self, x):
        """
        :type x: int
        :rtype: None
        """
        while self.s1:
            self.s2.append(self.s1.pop())
        self.s1.append(x)
        while self.s2:
            self.s1.append(self.s2.pop())

    def pop(self):
        """
        :rtype: int
        """
        return self.s1.pop()

    def peek(self):
        """
        :rtype: int
        """
        return print(self.s1[-1])
    
    
queue=MyQueue()
queue.push(42)
queue.pop()
queue.push(14)
queue.peek()
queue.push(28)
queue.peek()
queue.push(60)
queue.push(78)
queue.pop()
queue.pop()

