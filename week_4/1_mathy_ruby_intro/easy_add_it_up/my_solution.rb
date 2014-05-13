# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

## Pseudocode
## method called total that takes an array of numbers and returns the sum of all the numbers
## method that joins an array into one string 
## ---------
##  define a method called total that takes in a parameter of an array
##  create a variable called sum that equals zero 
## loop through all the numbers in the array and add each one to sum
## return sum


# What is the input? integers in an array 
# What is the output? (i.e. What should the code return?) the sum (total) of the array elements 
# What are the steps needed to solve the problem? 
# Define a variable 
# iterate over the array 
# return sum 



# 2. Initial Solution

def total(array)
  sum = 0
  for i in array 
    sum += i
  end
  sum
end

## Define a method called sentence_maker that takes in an array 
## returns each element joined into one sentence
## the first letter of the sentence should be capitalized and it should end with a period. 

## capitalize the array, then join each element, then add a period. 


def sentence_maker(array)
  array.first.capitalize!
  array.join(" ") + "."
end




# 3. Refactored Solution

## We did not need to refactor our solution.  The code was 
## clean from the beginning. 



# 4. Reflection 
# I learned a lot in this section.  We were able to work through this code
# fairly quickly.  The aha moment on this exercise came when I FINALLY 
# learned how to use git commands within the terminal.  I feel like 90% of my stress 
# will be alleviated now that I know basic git commands. 

# Code-wise, everything worked the first time around.  Arik and I were communicating well 
# and talking through things in a very efficient manner. 