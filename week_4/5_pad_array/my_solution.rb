# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
##Pseudocode 
##Define a variable pad- it will take in a minimum integer/optional value 
##if the minimum value is greater than the length of the array, then we add the
##optional value to the array.  
##otherwise, we will just return the array. 
##return the final array

# What is the input? we input integers 
# What is the output? (i.e. What should the code return?) it will return an array, with padding if necessary 
# What are the steps needed to solve the problem? see pseudo above: 


# 2. Initial Solution


##Pseudocode 
##Define a variable pad- it will take in a minimum integer/optional value 
##if the minimum value is greater than the length of the array, then we add the
##optional value to the array.  
##otherwise, we will just return the array. 
##return the final array




def pad!(minimum, value=nil)
  if minimum > self.count
    x = minimum - self.count
    x.times do
      self.push(value)
    end
    self
end

## array = [1,2,3]
## array.pad(5) 
## array 
## returns => [1, 2, 3, nil, nil]

##defining second method pad- essentially our code is going to have a similar function
##returning a new object 

def pad(minimum, value=nil)
  arr = []
  self.each do |x|
    arr.push(x)
  end
  x = minimum - arr.count
  x.times do
    arr.push(value)
  end
  arr
end


# 4. Reflection 
=begin 
This exercise was a tough one.  I had trouble wrapping my head around 
what needed to be done.  After completing the exercise and doing a little bit 
of research, I fully understand what needs to be done in the future. 

What worked is that we were able to create pad! and pad and create padding for them, when needed.
This proved to be a challenging exercise, but an interesting one. 


=end 

