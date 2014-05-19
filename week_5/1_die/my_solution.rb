# U2.W5: Die Class 1: Numeric


# I worked on this challenge [, with: Arik ].

# 2. Pseudocode.

# Input: putting in a number of sides
# Output: Getting a random number 
# Steps: create a die class, initialize sides, raise argument error,
# get sides, and then generate random number after setting delimiters.


# 3. Initial Solution

class Die
  
  #setter
  def initialize(sides)
  	if sides < 2
      raise ArgumentError, "Sides cannot be less than 1" 
    end
    @sides = sides
  end
  #getter
  def sides
    return @sides
  end
  
   
  # generate a random number. 
 
  def roll
    return rand(@sides) + 1  ## roll_value = rand(@sides) + 1
  end
end





# 4. Refactored Solution
  def initialize(sides)
  	raise ArgumentError, "Sides cannot be less than 1" if sides < 2
    end
    @sides = sides
  end
  #getter
  def sides
    return @sides
  end
  
   
  # generate a random number. 
 
  def roll
    return rand(@sides) + 1  ## roll_value = rand(@sides) + 1
  end
end
#
#
# 


# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
p die.sides == 6
p die.roll.class == Fixnum




# 5. Reflection 
# I enjoyed doing this assignment.  It was interesting to see the power of a class
# Classes seem like a great way to make your code easier to read and easier to reference.
# The more we do these assignments, the more comfortable I feel.  At the present, I still
# feel a little bit behind. I am also having a discouraged day sort of, but I still think I learned 
# a lot from this exercise. 
