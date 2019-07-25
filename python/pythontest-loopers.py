#!/usr/bin/python

# Loopers
someCounter = 1
someMax = 22

print("While....")
while someCounter <= someMax:
  print(someCounter)
  someCounter +=1

someCounter = 1
someMax = someMax+1
print("For....")
for i in range(someCounter, someMax):
  print(i)
