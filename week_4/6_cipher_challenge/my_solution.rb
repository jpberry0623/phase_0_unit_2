# U2.W4: Cipher Challenge


# I worked on this challenge with: Ariel Fogel



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# Defines a method which takes a String parameter
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # downcase the input string and place each string character into an array called "input"
  decoded_sentence = [] # Initialize new array to hold the decoded message
                          # define a hash called cipher setting each key to a character in the alphabet and each value to 
                          # corresponding character 4 places before it in the same alphabet.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
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
            
 input.each do |x| # iterating through the input array and calling each element in the array x
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # iterates through each key of the cipher hash
      if x == y  # compares each element of the input array to each key of the cipher hash
        puts "I am comparing x and y. X is #{x} and Y is #{y}." # puts result of comparison to the screen
        decoded_sentence << cipher[y] #pushes value of cipher key into the decoded_sentence array
        found_match = true # sets found_match to true if key matches the element in input array
        break  # breaks when match is found to stop iteration process, improving efficiency and runtime
      # If input value is any of these symbols on line 55, 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " " # push space character to the decoded_sentence array
        found_match = true # indicates that a match was found
        break # breaks when match is found to stop iteration process, improving efficiency and runtime
      # identifies a range 0 through 9, transforms into array and iterates through to see if number matches element in input array    
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x # push integer to the decoded_sentence array
        found_match = true # indicates that a match was found
        break  # breaks when match is found to stop iteration process, improving efficiency and runtime
      end 
    end
    if not found_match  # if input array element is not integer, letter, or symbol character denoting a space (i.e punctuation)
      decoded_sentence << x # push element into decoded_sentence array
    end
  end
  decoded_sentence = decoded_sentence.join("") #concatenates all elements of the decoded_sentence array and converts it into a single String
 
  if decoded_sentence.match(/\d+/) #evaluate the string and find all grouped integers within the string
    #For each group of integers found within the string, substitute that number by that number/100
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence # return the final decoded sentence, with modifications for the numbers    
end
# Your Refactored Solution

#Pseudocode

# define method that takes in an encoded string as a parameter
# define new array variable `input', which contains each lowercase encoded string character as an individual element
# initialize the decoded sentence array to be used in the process of decoding
# set new variable for the cipher work equal to a range of a to z, then push the range to an array
# iterate through the input array
# if cipher includes the element from the input array
# find index position of the cipher element
# push cipher[index-4] to decoded_sentence array
# else if element from input array is one of the symbol characters
# push a space character to the decoded sentence array
# else if element from the input array is an integer
# push element to decoded sentence
# else
# push unaltered element to decoded_sentence array
# join elements of decoded_sentence array into a single element and convert to a String
# search through string for integers
# substitute integers with their values divided by 100
# return final decoded sentence

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("")
    decoded_sentence = []
    # create cipher array
    cipher = ("a".."z").to_a
    
    input.each do |x|
        # decode characters if they are letters from a to z
        if cipher.include?(x)
            encoded_position = cipher.rindex(x)
            decoded_sentence << cipher[encoded_position-4]
            
        # decode encoded spaces
        elsif ["@","#","$","%","^","&","*"].include?(x)
            decoded_sentence << " "

        # any other type of character will not be encoded, so simply push to array
        else
            decoded_sentence << x
        end
    end
    decoded_sentence = decoded_sentence.join("")
 
    #find any "exaggerated" numbers and divide by 100 to provide more reasonable estimates
    if decoded_sentence.match(/\d+/)
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
    end
    return decoded_sentence
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

# Working on this challnge was a great exercise.  My partner was very knowledgeable and helped me through many of the
# methods we were describing to help me understand exactly what they were doing.  I found it challenging and at time
# tedious to go through each line of code and write descriptions, but while tedious, it was extremely helpful and a 
# practice I need to implement more often when i look at code.  I have a bad habit of trying to look at the whole 
# program rather that individual lines of code when looking for functionality and refactoring ideas.  Many of the keys
# to refactoring come from realizing what one line of code is doing and linking it to other lines of the program that
# can also be refactored.  I also got some great direction from my partner about pseudocode practices and really good 
# feedback about how I was trying to over explain the pseudocode and how I could think of it more in terms of what I
# want the code to do rather than having to explain specific methods/syntax.








 
