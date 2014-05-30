#Working with Arik Gadye 



class PezDispenser
	attr_reader :flavors

 def initialize(flavors)
 	@flavors = flavors
 end
 
 def pez_count
 	@flavors.length
 end

 def get_pez
 	@flavors.shift
 end

 def add_pez(flavor)
 	@flavors << flavor 
 end

 def see_all_pez
 	@flavors 
 end
end

def assert
	raise "Assertion failed!" unless yield; "passed"
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
dispenser = PezDispenser.new(flavors)

p assert {dispenser.flavors.include?('cola') == true}
p assert {dispenser.pez_count == 9}
p assert {dispenser.get_pez == 'cherry'} 
p assert {dispenser.add_pez('lemon') == dispenser.flavors << 'lemon'}
p assert {dispenser.see_all_pez == dispenser.flavors}
# flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
# super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
# puts "Here's a look inside the dispenser:"  
# puts super_mario.see_all_pez 
# puts "Adding a purple pez."
# super_mario.add_pez("purple")   # mmmmm, purple flavor
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"

=begin 
This was another solid exercise.  It gave me a better understanding of how classes, instance
methods, variables and tests work together. 

As usual, it took a bit of research to discover what needed to be done.  We talked this out 
fairly well and were able to come with a solution in under an hour.  


=end 
