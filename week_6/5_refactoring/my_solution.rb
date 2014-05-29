# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution


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


# Refactored Solution

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s 
    raise ArgumentError.new("Number must be 16 digits") if @card_number.length != 16 
  end

# Removed add_nums and double_digits methods

  def check_card
    cc = @card_number.scan(/./).map(&:to_i) 
    
    doubled_nums = cc.each_index { |i| cc[i] *= 2 if i.even? }.join.scan(/./).map(&:to_i) 

    doubled_nums.inject(:+) % 10 == 0 ? true : false 
  end
end


# DRIVER TESTS GO BELOW THIS LINE

# USE assert statements, like example below:

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "matt"
# assert { name == "matt" }
# assert { name == "tom" }

def assert 
  raise "Assertion failed!" unless yield  
end

assert { CreditCard.new(4563960122001999).check_card == true }
assert { CreditCard.new(4408041234567892).check_card == false } # Raise Assertion

# Reflection 
=begin
This section taught me a thing or two about scan.  From this exercise, I think I now 
have a better idea of how the method works.  As I go along, I am also becoming 
more and more comfortable with refactoring and also more comfortable with 
defining methods. 




=end 