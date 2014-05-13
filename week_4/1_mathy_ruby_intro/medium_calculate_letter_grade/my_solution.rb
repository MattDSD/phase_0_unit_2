# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

##Pseudocode Medium Problem
## Create method called "Get Grade" that takes an array of test scores 
## each score in the array should be between 0 and 100, where 100 is the max score
## We are computing the average score and returning it as a letter grade 
## We will loop through each element in the array and if any elements in the array are negative or 
## above 100, we will return false.  Otherwise, we will create a variable called sum, which will 
## take the total of all of the numbers added up. Then we will create a variable called average, which
## is equal to the total divided by the length of the array. If the average is between 90-100, return "A"
## if average is between 80-90 return "B", if between 70-80 return "C".  If between 60-70, return "D" 
## and everything below will be "F". 

# What is the input? the number grades in an array 
# What is the output? (i.e. What should the code return?) a letter grade 
# What are the steps needed to solve the problem? 
=begin
we created code that computes an average score in an array and returns a letter grade. 
we used switch cases to define the letter grade parameters. 



=end 


# 2. Initial Solution

def get_grade(array)
	sum = 0
    array.each do |x|
    	sum += x
    end
    average = sum / array.length
    case average 
    when 90..100
      "A"
    when 80..89
      "B"
    when 70..79
      "C"
    when 60..69
      "D"
    else
      "F"
  end
 end 



# 3. Refactored Solution
# No refactored code 

# 4. Reflection 
=begin 
Same as the last exercise, I paired with Arik to complete this exercise.
We used switch cases, which was new to me, to complete this code.  It was fun 
to go outside of our comfort zone and use case statements. 
The major aha moment I had was when I finally learned how to use git commands to commit my work.

At this moment, I feel a little rusty at Ruby, but I am feeling more confident with each exercise.


=end 