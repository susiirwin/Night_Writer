



class NightWriter

  handle.close

  repeated_text = incoming_text * 3

  writer = File.open(ARGV[1], "w")

  writer.write(repeated_text)

  writer.close
  #
  # attr_reader :file_reader
  #
  # def initialize(file_text)
  #   @reader = FileReader.new
  # end
end



#open and read a text file that has english in it

#we need to create the output file in the same directory

#we need to get the .length of the new file's contents

#  puts "Creates #{outputfile.txt} containing #{outputfile.length} characters"

##Step 2
# so for each line of English, there are 3 lines of Braille

#2.1 Build a test to take hello world in the input file, and print it 3 times in a row to the output file
#2.2 Build the code based on the test

##Step 3
#Map Standard Letter to Braille Representation
#take te string of english letters, split it into an array
#with new array, we want to use .map (or some other enumerable) to iterate through and create a hash to match letter with key and then show respective value
#puts one line of 6 symbols , then use a line break to break it into 2 characters in each of 3 rows into the output file
#


#on the way back converting 3 lines into 1 long line and match it back to Hash.value, we can then compare to letter
