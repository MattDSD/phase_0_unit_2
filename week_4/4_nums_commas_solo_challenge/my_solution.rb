# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode
#Writing the methodd which takes an integer as its input and 
#returns a comma-separated integer as a string


##




# What is the input? an integer 
# What is the output? (i.e. What should the code return?) an integer with commas (if necessary)
# What are the steps needed to solve the problem? 
=begin 
First, I will need to define a method that takes an integer for its parameter.
I will then need to use a if/else style statement to determine what types of numbers
should get a comma and which shouldn't. 

After that, I will break apart the input and put it back together using commas
when necessary. 

Finally, I will run a couple of tests to make sure that it works. 




=end 


# 2. Initial Solution

def separate_comma(integer)
  x = integer.to_s.split('') #breaking apart the integer into an array
  y = x.size/3.0 #determine size of input 
  if x.size < 4 
    puts integer.to_s #if size of number is greater than 4, convert to string
  elsif x.size%3 == 0 #if remainder after dividing by 3 is 0, then it is divisible by 3
      z = -4
      (y.to_i-1).times do |i|
      x.insert(n, ',')
      z -= 4
    end
    puts x.join("")
  else
      z = -4
      y.to_i.times do |i|
      x.insert(z, ',')
      z -= 4
    end
  puts x.join("")
  end
end
 


puts separate_comma(97425)    
puts separate_comma(89552600)



# 3. Refactored Solution

=begin
I am not sure how to refactor this for the better	
 
=end  
	



# 4. Reflection 
=begin
This exercise was extremely difficult.  The code I have created has worked but 
it took me a long time to get it to work and I had to do a ton of research 
to get it to work.  I had to look up stuff on ruby docs and try to google ideas 
that would help lead me to the points that I needed to hit on. 

Overall, this exercise made me feel pretty inadequate as a new programmer.  I have 
been putting in the time to learn and I feel like I am not up to speed if this is 
was supposed to be 'easy' for a new programmer. 

I need to find better tuts if I this is reasonable for a new programmer. 
 

=end 
	