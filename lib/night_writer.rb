class NightWriter
  attr_reader :input,
              :counter

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
                          "Z" => ["..0.", "...0", ".000"],
                          " " => ["..", "..", ".."],
                          "!" => ["..", "00", "0."],
                          "'" => ["..", "..", "0."],
                          "," => ["..", "0.", ".."],
                          "-" => ["..", "..", "00"],
                          "." => ["..", "00", ".0"],
                          "?" => ["..", "0.", "00"],

                        }

  def initialize(input)
    @input = input
    @counter = 0
  end

  def encode_to_braille
    join_letters
  end

  def count
    input.length
  end

  def split_the_input_text
    input.chars
  end

#require 'pry'; binding.pry

  # def counter_work
  #   if input.upcase? == true
  #      @counter += 4
#     else
  #     upcase add counter += 2
  #     if counter >=161
  #       tell it to move on to convert_methods

  #       reset counter
  # end

  def convert_letters
    split_the_input_text.map do |letter|
      ALPHABET[letter]
      # add a clause to insert "\n\n\n" to each element in barille array if line break
    end
  end
  #
  # def counter_work
  #   convert_letters.each do |letter|
  #     if letter[0][0].length == 4
  #       @counter += 4
  #     else
  #       @counter += 2
  #     end
  #   end
  #   @counter
  # end

  def join_letters
    first   = []
    second  = []
    third   = []

    convert_letters.each do |letter|
        first   << letter[0]
        second  << letter[1]
        third   << letter[2]
    end
    insert_new_lines(first.join, second.join, third.join)
  end

  def insert_new_lines(first_line, second_line, third_line)
    final_string = ""
    until first_line.length == 0
      final_string << first_line.slice!(0..79) + "\n"
      final_string << second_line.slice!(0..79) + "\n"
      final_string << third_line.slice!(0..79) + "\n"
    end
    final_string
  end

  def row_length
    join_letters.first.length
  end
end



# @counter += 1
