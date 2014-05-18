# U2.W4: Refactor Cipher Solution


# I worked on this challenge [with: Ariel Fogel]

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #define method that takes one parameter/argument
    alphabet = ('a'..'z').to_a #convert range "a" to "z" to an array, set it equal to variable `alphabet'
    # create a temporary array that takes the elements of `alphabet' and shifts the index values by 4   
    # create an array of arrays, where the first element of each nested array comes from the the `alphabet' 
        # array and the second element comes from the temporary alphabet.rotate(4) array.
    # Create a Hash using the Hash#[] syntax, where each key corresponds to the first element of each nested array
        # and each value corresponds to the second element of each nested array.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    
    # alphabet.zip(rotated_array)
    # [a,b,c,...x,y,z].zip([e,f,g,...b,c,d])
    # [[a,e],[b,f],[c,g],...,[d,z]]
    # Hash[[a,e],[b,f],[c,g],...,[d,z]]

    #create an array of symbols and set it equal to variable `spaces'
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    #calls downcase on sentence and sets it equal to a new variable `original_sentence'
    original_sentence = sentence.downcase
    encoded_sentence = [] #creates an empty array for the encoded sentence
    #iterate through each character `original_sentence', calling each character |element|
    original_sentence.each_char do |element|
      if cipher.include?(element) #if the Hash cipher includes the character as one of its keys:
        encoded_sentence << cipher[element] #push the cipher's value to the array, `encoded_sentence'
      elsif element == ' ' #else if the character is equal to a whitespace
        encoded_sentence << spaces.sample #randomly select an element from the `spaces' array and push it to `encoded_sentence'
      else #otherwise:
        encoded_sentence << element #push the element to the `encoded_sentence' array, unchanged
      end
     end
    
    return encoded_sentence.join #return `encoded_sentence' as a string
end


# Questions:
# 1. What is the .to_a method doing?
# converts the object (e.g. the range of letters in the alphabet) to an array

# 2. How does the rotate method work? What does it work on?
# Moves the index position of each element of an array down by the integer value provided as an argument

# 3. What is `each_char` doing?
# iterating through each character of a string

# 4. What does `sample` do?
# Randomly returns an elements of an array upon which the method is called

# 5. Are there any other methods you want to understand better?
# no

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# While the code here is concise, we do not feel it is better than our refactored solution. Our code offers easier 
# readability while solving the problem.  

# 7. Is this good code? What makes it good? What makes it bad?
# The code is very DRY.  The code comes up with a very elegant and concise solution for dealing with a tough problem.
# However the code, particularly the cipher = Hash[alphabet.zip(alphabet.rotate(4))] is hard to parse and could do
# a better job in terms of human readability.



# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")



# 5. Reflection 

# again with this challnge I had a great pairing partner who took the time to explain some methods that I was having a 
# hard time wrapping my head around.  Particularly the .zip function.  Once I understood that the .zip was getting passed the
# rotated array and creating new next arrays with each value, we were able to move one.  I think exercises like these where we
# to read through each line of code really help me solidify understanding, becasue I tend to rush through the code.  Being
# forced to step back and really look through it line by line is very valuable for me.  I still need to spend more time looking
#through code examples and practicing in irb until some of the commonly used functions and syntax are familiar.




