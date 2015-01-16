#!/bin/python

# This program is designed to decompose a rectangle into smaler rectangles to minimise surface area and thus communications.

# It calculates the square root of the number of nodes and finds the closest fitting square.
import math

Number_of_nodes = 18


i = 1
Solution_found = False
root_nodes = math.sqrt(Number_of_nodes)  # Work
Ideal_length = math.floor(root_nodes)
Test_length = Ideal_length
# Initial test.

if Number_of_nodes % Test_length == 0:
   Test_width = Number_of_nodes/Test_length
   print "Found " + str(Test_length) +" by "+ str(Test_width)
   Solution_found = True;

# look around for the nearest solution
while Solution_found is False:
   # Try below
   Test_length_lower = Ideal_length - 1

   if Number_of_nodes % Test_length_lower == 0:
      Test_length = Test_length_lower
      Test_width = Number_of_nodes/Test_length
      print "Found " + str(Test_length) +" by "+ str(Test_width)
      Solution_found = True;
      
   # Try above
   Test_length_upper = Ideal_length + i

   if Number_of_nodes % Test_length_upper == 0:
      Test_length = Test_length_upper
      Test_width = Number_of_nodes/Test_length
      print "Found " + str(Test_length) +" by "+ str(Test_width)
      print 
      Solution_found = True;

   # Try further away
   i = i+1

   if i == 20 : Solution_found

Grid_file = open('Grid_sizes.dat','w')
Grid_file.write("""
Number of Nodes    :: """ + str(int(Number_of_nodes)) + """
Grid lenght        :: """ + str(int(Test_length)) + """
Grid width         :: """ + str(int(Test_width))
)
Grid_file.close
