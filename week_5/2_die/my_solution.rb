# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: takes an array as input 
# Output: returns a random value on a random side of the die 
# Steps:
# What does the roll method do?
# returns a random element in the array @labels
# Steps: 
# Randomly return a character on a random side of the die 
# Define the roll variable
# generate a random variable using our sides method
# call random on @labels.length 

# 3. Initial Solution

class Die
  
  # if the array of strings is empty raise an argument error saying no bueno
  # initializing 'labels' 
  
  def initialize(labels)
    raise ArgumentError if labels.empty?
    @labels = labels
  end

  def sides
    return @labels.length
  end

  
# What does the roll method do?
# returns a random element in the array @labels
# Steps: 
# Randomly return a character on a random side of the die 
# Define the roll variable
# generate a random variable using our sides method
# call random on @labels.length 

# @labels => [1,2,3,4,4] 

# @labels[]
def roll 
   @labels[rand(@labels.length) + 1]
end 
  



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new([1,2,3,4,5,6])
die.sides # 6
die.roll # [1,2,3,4,5,6][rand(die.sides) + 1] => [1,2,3,4,5,6][rand(6) + 1]




# 5. Reflection 
=begin 
# 5. Reflection 
=begin 
After this exercise, I have a better understanding of how to write test code, clean up existing code to make it 
more readable and reusable.  I am finally starting to also develop a better understanding 
of instance variables and classes.


=end 
