# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.




# 2. Pseudocode


#new method that inializes a new dispener
#new method that shows the number of pez left in the dispenser
#new method that allows user to remove from dispenser
#new method that allos use to add
#new method that allows user to see the items in dispenser




# 3. Initial Solution

class PezDispenser
 	
 	def initialize flavors
 		@dispenser = flavors
 	end

 	def pez_count
 		p @dispenser.length
 	end

 	def get_pez 
 		@dispenser.pop
 	end

 	def add_pez flavor
 		@dispenser << flavor
 	end

 	def see_all_pez
 		p @dispenser
 	end

end
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"






# 5. Reflection 
=begin
This exercise seems like good exposure for getting used to the world of development.  When working
with others, it seems that we will have to use user stories to create pseudocode and code from the stories.
This test seems like a great way to get exposure to that. I struggled for a bit with this exercise 
Just like I do on almost every exercise.  Nonetheless, I feel that my skills are gradually improving. 	

=end 