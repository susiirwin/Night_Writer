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
                          "B" => ["..0.", "..0.", ".0.."],
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

end
