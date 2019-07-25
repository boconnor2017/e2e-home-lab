#!/usr/bin/python

import os

# Create a file
e2eFile = open("e2efile.txt", "x")
print("e2efile.txt created")

# Write a file
print("Writing to file...")
e2eFile = open("e2efile.txt", "a")
e2eFile.write("Appending to file: Line 1\n")
e2eFile.write("Appending to file: Line 2\n")
e2eFile.write("Appending to file: Line 3\n")
e2eFile.write("Appending to file: Line 4\n")
e2eFile.write("Appending to file: Line 5\n")
print("5 lines written to e2efile.txt")

# Read a file
print("Reading e2efile.txt")
e2eFile = open("e2efile.txt", "r")
print(e2eFile.read())

# Delete a file
print("Deleting e2efile.txt")
os.remove("e2efile.txt")
