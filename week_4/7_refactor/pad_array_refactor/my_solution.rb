# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: Puru Dahal ].


# Ernie's
# 1. First Person's solution I liked
#    What I learned from this solution: I learned that duplicate and clone do the same thing. 
# I also learned that there are many ways to make the code cleaner and neater. 
# Copy solution here:
class Array
  def pad!(n, v = nil)
  	(n - self.length).times {self.push(v)}
  	self
  end
  def pad(n, v = nil)
  	self.dup.pad!(n, v)
  end
end




# 2. Second Person's solution I liked
#    What I learned from this solution:  Again, I learned that clone and dup do the same thing essentially. 
#  Puru did a great job of keeping his code clean and concise. 
# Copy solution here: 
# Puru's

class Array
def pad!(num, value = nil)
		diff = num - self.count
		diff.times do
			self << value
		end
		self
	end

	def pad(num, value = nil)
		self.clone.pad!(num,value)
	end
end



# 3. My original solution:
# Matt's & Arik's
class Array

	def pad!(minimum, value=nil)
		x = minimum - self.count
	    x.times do
	      self.push(value)
	    end
	    self
	end
	end


# 4. My refactored solution:
# Matt's & Arik's
class Array

	def pad!(minimum, value=nil)
		x = minimum - self.count
	    x.times do
	      self.push(value)
	    end
	    self
	end
	def pad(minimum, value= nil)
		self.dup.pad!(minimum, value)
	end
 end 




# 5. Reflection
=begin 
This was a great assignment to learn from others on.  I had a good time 
looking through others assignments and learning how they draw conclusions.  
There were only two people that had completed the assigment at the time when 
I planned to work on this, so it made my decision process easy. 

However, both did a great job, so it was easy to learn a thing or two from each
of them.  I liked that both had a much cleaner version of pad, than I did. 

I will certainly remember both of these options in the near future. 

=end