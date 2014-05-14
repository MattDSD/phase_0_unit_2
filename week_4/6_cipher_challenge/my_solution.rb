# U2.W4: Cipher Challenge


# I worked on this challenge with: Michele Murphy with a cameo by Puru Dahal.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message) #def parameter n_k_c and passing c_m as value
  input = coded_message.downcase.split("") #set user input equal to lowercase characters and split them up into an array. We use the " " as a delimiter 
  decoded_sentence = [] # creating an empty array titled d_s 
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # Create a Hash titled cipher and give the key an alphabet character offset by -4
            "h" => "d",   # values are assigned in alphabetical order
            "i" => "e",   #
            "j" => "f",   #
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
    
    #cipher.collect{|key, value| value}
    
            
  input.each do |x| # What is #each doing here? each is the method that allows us to iterate over each key/value pair 
    found_match = false  # Why would this be assigned to false from the outset? It would assinged false because otherwise we would return false positives to begin with and the loop would never start. What happens when it's true? When it finds a match, it returns true.  At that point, it moves onto to line 50 
    cipher.each_key do |y| # What is #each_key doing here? this line is running through all of the keys and comparing them to the list of values. x == y 
      if x == y  # What is this comparing? this is comparing the key and value pairs for a match.  Where is it getting x? user input. Where is it getting y? cipher key- value What are those variables really? keys and values of a hash 
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #printing a string if x == y that encrypts their true message
        decoded_sentence << cipher[y] #when a match is found, the y value is added to the decoded sentence. 
        found_match = true #while iterating, found_match will return true if it finds a match 
        break  # Why is it breaking here? the code found a match and we need to move on to the next letter to be decrypted. 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if the iteration searches for alphabetical characters and cannot find any, it will search for special characters such as: $, @, etc. 
        decoded_sentence << " " # if it finds a match it will append a space to the decoded message 
        found_match = true 
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? evaluating numerical characters
        decoded_sentence << x #add this match to the end of the decoded sentence 
        found_match = true
        break #breaks end the loop once we find a match 
      end 
    end
    if not found_match  # What is this looking for? this is looking for a match.  
      decoded_sentence << x #if we don't find a match, this will append the character that it was trying to match onto the end of the sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") #when we broke apart the string on line 15, we are simply rejoining it here based on our iterations 
 
  if decoded_sentence.match(/\d+/) #What is this matching? this is matching a digit character ([0-9]) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... if there is a match, substitute in for it an integer divided by 100
  end  
  return decoded_sentence # What is this returning?  it is returning a decrypted message: "can somebody just get me 100 bags of cool ranch doritos?"       
end


# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = ('a'..'z').to_a.rotate(4) 
            
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << (('a'..'z').to_a)[cipher.index(y)] #cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
=begin
I worked on cipher with Michelle.  She was great to work with.  We were both collaborating well and were
able to contribute in a meaningful way.  I liked all of her suggestions and I learned a lot. 

Specifically, we both learned how to convert a Hash to an Array.  

We learned that this will clean up the code significantly.  We also got a better understanding of how the code actually worked.

I see this coming in handy when I am debugging future code. 
  
=end





