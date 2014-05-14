def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = ('a'..'z').to_a.rotate(4) 

  input.each do |x| #  
    found_match = false  # 
    cipher.each do |y| # 
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



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")
