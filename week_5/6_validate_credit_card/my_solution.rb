# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a 16 digit integer
# Output: true/false, depending if credit card is valid
# Steps: initalize and check if the number contains 16 digits.  create an array, add a new element to the begining, and double every other integer.
# Finally add each individual digit in the array and check if the total is divisible by 10


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
begin
class CreditCard
	def initialize (credit_card)
    	@number = credit_card
    	raise ArgumentError.new("Number must be 16 digits") if (Math.log10(@number).to_i + 1) !=16
	end

	def validate 
	 	array = @number.to_s.split('')
	 	array.map!{|x| x.to_i}
	 	array.insert(0,"remove this")
	 	doubled = array.map.with_index{|value,i| i % 2 == 0 ? value : value *= 2 } 
	 	p doubled
	 	doubled.shift
	 	total = doubled.reduce(:+)
	 	if total%10==0
	 		puts true
	 	else
	 		puts false
	 	end
	 end
end




# 4. Refactored Solution
class CreditCard
	def initialize (credit_card)
    	@number = credit_card
    	raise ArgumentError.new("Number must be 16 digits") if (Math.log10(@number).to_i + 1) !=16
	end

	def validate 
	 	array = @number.to_s.split('')
	 	array.map!{|x| x.to_i}
	 	array.insert(0,"remove this")
	 	array.map!.with_index{|value,i| i % 2 == 0 ? value : value *= 2 } 
	 	array.shift
	 	if array.reduce(:+)%10==0
	 		puts true
	 	else
	 		puts false
	 	end
	 end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

p "should return true"
passes = CreditCard.new(4408041234567896)
passes.validate

p "should return false"
fails =  CreditCard.new(4408041234567892)
fails.validate


p "should raise arguementerror"
not_valid = CreditCard.new(12341234123412341)
not_valid.validate


# 5. Reflection 
=begin 
I learned a lot on this exercise.  I became slightly more comfortable with map and map index. 
I struggled with this problem for a bit and had to invite a new cohort member into this session 
to teach me what I was doing wrong.  It was tedious at first. 

=end 
