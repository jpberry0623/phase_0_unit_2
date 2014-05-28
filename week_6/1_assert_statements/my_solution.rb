# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement
=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end

# 2. Pseudocode what happens when the code above runs

# this code is testing to make sure that the yield block of code that is being passed is true.  We have created a 
# variable called name so the block of code is comparing the variable with a boolean operator. 



# 3. Copy your selected challenge here

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

#mp north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
#p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
#p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
#p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
#p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
#p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")




# 4. Convert your driver test code from that challenge into Assert Statements
def assert
	raise "You shall not pass!(Gandolf Voice)" unless yield
end

# these examples will pass
assert {p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!"}
assert {p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"}
 # this example should fail
assert {p north_korean_cipher("m^aerx%e&gsoi!") == "three blind mice"}




# 5. Reflection

# This challenge was pretty easy and the code was understandable.  That being said I just created a similar 
# method to the one used in the example, using a yield where I know i could have created a totally different 
# method and challenged myself a little more. I also did not try to use rspec.  That will be something I look back 
# on and try after I make sure I can get the other assignments for the week completed and understood.


