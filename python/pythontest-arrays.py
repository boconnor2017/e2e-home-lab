# Arrays
arrayCounter = 0
someMax = 22
someArray = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
arrayLength = len(someArray)

print("Length of array: " + str(arrayLength))
while arrayCounter <= (arrayLength-1):
  print("Day " + str(arrayCounter+1) + ": " + someArray[arrayCounter])
  arrayCounter +=1
