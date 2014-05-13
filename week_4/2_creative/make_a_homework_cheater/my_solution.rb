# U2.W4: Homework Cheater!


# I worked on this challenge [ with: Puru Dahal  ].

# 2. Pseudocode

=begin
We are creating a sentence that will work for all three famous figures. We will be passing 
the following arguments: name, DOB, DOD, Title, AKA, Famous work and published in. 
=end 

# Input: name, title, dob, famous_work, published_in, aka, dod
# Output: Leonardo Da Vinci, 15 April 1452; was born on 2 May 1519. He was well known for Artist and Genius, which was created in One of the most famous painters of all time. He
# 		  Sir Isaac Newton, 25 December 1642; was born on 20 March 1727. He was well known for English physicist and mathematician, which was created in Published book Mathemati
# 		  William Shakespeare, 26 April 1564; was born on 23 April 1616. He was well known for the greatest writer in the English language and the world's pre-eminent dramatist.
# Steps: We first collected information
# 		 We then created a method to pass parameters through 
# 		 We then created a story that would work for three different people 
# 		 We passed in the arguments 
# 		 We replaced the info with arguments 
# 		 We then wrote a quick test puts 
#  		 Ran the file in terminal 


# 3. Initial Solution

def essay_writer(name, city, place, date)
    "My name is #{name}, and I am from #{city}. I am going to #{place} on #{date}"
end


puts essay_writer("Matt", "San Diego", "DBC", "June 23rd")
puts essay_writer("Puru", "Houston", "Dev bootcamp", "June")




# 4. Refactored Solution
def essay_writer(name, title, dob, famous_work, published_in, aka, dod)
    "#{name}, #{title}; was born on #{dob}. He was well known for #{famous_work}, which was created in #{published_in}. He is also known as, #{aka}.  After a long life, he passed away on #{dod}."
end





# 1. DRIVER TESTS GO BELOW THIS LINE


puts essay_writer(
        "Leonardo Da Vinci",
        "15 April 1452",
        "2 May 1519",
        "Artist and Genius",
        "One of the most famous painters of all time",
        "Mona Lisa",
        "1503"
)

puts essay_writer(
        "Sir Isaac Newton",
        "25 December 1642",
        "20 March 1727",
        "English physicist and mathematician",
        "Published book Mathematical Principles of Natural Philosophy",
        "Mona Lisa",
        "1687"
)


puts essay_writer(
        "William Shakespeare",
        "26 April 1564",
        "23 April 1616",
        "the greatest writer in the English language and the world's pre-eminent dramatist. ",
        "One of the most famous poets and writers 17th century ",
        "Hamlet ",
        "1599"
)




# 5. Reflection 

=begin 
It was fun pairing with Puru, as always.  We had fun putting together the stories, pseudo, and learning a thing or two. 
I learned the basics of Rspec, how to concat sentences, how to create basic parameters using Ruby and then pass them into a sentence. 
The point of our work was to select three separate figures and create a template that would work with all three. 

I think we accomplished this in a fun way and did so in a reasonable amount of time. 
=end 


