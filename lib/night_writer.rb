class NightWriter
  attr_reader :file_reader,
              :input,
              :stacked_braille

              ALPHABET = {"a" => ["0.", "..", ".."],
                          "b" => ["0.", "0.", ".."],
                          "c" => ["00", "..", ".."],
                          "d" => ["00", ".0", ".."],
                          "e" => ["0.", ".0", ".."],
                          "f" => ["00", "0.", ".."],
                          "g" => ["00", "00", ".."],
                          "h" => ["0.", "00", ".."],
                          "i" => [".0", "0.", ".."],
                          "j" => [".0", "00", ".."],
                          "k" => ["0.", "..", "0."],
                          "l" => ["0.", "0.", "0."],
                          "m" => ["00", "..", "0."],
                          "n" => ["00", ".0", "0."],
                          "o" => ["0.", ".0", "0."],
                          "p" => ["00", "0.", "0."],
                          "q" => ["00", "00", "0."],
                          "r" => ["0.", "00", "0."],
                          "s" => [".0", "0.", "0."],
                          "t" => [".0", "00", "0."],
                          "u" => ["0.", "..", "00"],
                          "v" => ["0.", "0.", "00"],
                          "w" => [".0", "00", ".0"],
                          "x" => ["00", "..", "00"],
                          "y" => ["00", ".0", "00"],
                          "z" => ["0.", ".0", "00"],
                          "A" => ["..0.", "....", ".0.."],
                          "B" => ["..0.", "..0.", ".0.."]
                          "C" => ["..00", "....", ".0.."],
                          "D" => ["..00", "...0", ".0.."],
                          "E" => ["..0.", "...0", ".0.."],
                          "F" => ["..00", "..0.", ".0.."],
                          "G" => ["..00", "..00", ".0.."],
                          "H" => ["..0.", "..00", ".0.."],
                          "I" => ["...0", "..0.", ".0.."],
                          "J" => ["...0", "..00", ".0.."],
                          "K" => ["..0.", "....", ".00."],
                          "L" => ["..0.", "..0.", ".00."],
                          "M" => ["..00", "....", ".00."],
                          "N" => ["..00", "...0", ".00."],
                          "O" => ["..0.", "...0", ".00."],
                          "P" => ["..00", "..0.", ".00."],
                          "Q" => ["..00", "..00", ".00."],
                          "R" => ["..0.", "..00", ".00."],
                          "S" => ["...0", "..0.", ".00."],
                          "T" => ["...0", "..00", ".00."],
                          "U" => ["..0.", "....", ".000"],
                          "V" => ["..0.", "..0.", ".000"],
                          "W" => ["...0", "..00", ".0.0"],
                          "X" => ["..00", "....", ".000"],
                          "Y" => ["..00", "...0", ".000"],
                          "Z" => ["..0.", "...0", ".000"]
                        }



  def initialize(input)
    @input = input
    @stacked_braille = []
  end

  def count
    input.length
  end

  # def encode_file_to_braille
  #   # I wouldn't worry about testing this method
  #   # unless you get everything else done
  #   plain = @reader.read
  #   braille = encode_to_braille(plain)
  # end


  def split_the_input_text
    input.chars
  end

  def convert_letters
    split_the_input_text.map do |letter|
      ALPHABET[letter]
    end
  end

  def join_letters
    converted_combined_braille = convert_letters[0].zip(convert_letters[1]).map do |line|
      line.join
    end
    return converted_combined_braille
  end

  def stacking
    join_letters.each do |row|
      @stacked_braille << row.insert(-1, "\n")
    end
  end


  def encode_to_braille
    ALPHABET[input]

    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end

end


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
