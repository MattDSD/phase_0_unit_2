# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

 class GuessingGame
   def initialize(answer) #setter 
     @answer = answer
     @correct_ans = false
   end
 
   def guess(guess) #getter 
    @guess = guess
    return :high if @guess == 100 #too high 
    return :low if @guess == 0 #if too low 
    return :correct if @guess == 10 #if correct answer 
   end

   def solved?
    @guess == 10? @correct_ans = true : @correct_ans = false #solved answer 

   end 
 end
 

# 4. Refactored Solution
 class GuessingGame
    def initialize(answer)
      @answer = answer
      @correct_ans = false
    end

    def guess(guess)
      @guess = guess
      return :high if @guess > @answer #corrected 
      return :low if @guess < @answer #corrected 
      return :correct if @guess == @answer #corrected 
    end
    def solved?
      @guess == @answer? @correct_ans = true : @correct_ans = false
    end 
 end

# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(20)
p game.guess(0) == :low
p game.guess(10) == :low 
p game.guess(20) == :correct
p game.guess(30) == :high
p game.guess(40) == :high
p game.guess(50) == :high






# 5. Reflection 
=begin 




=end 
