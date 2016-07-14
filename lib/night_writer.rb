require './dictionary'

class NightWriter
  attr_reader :input,
              :counter

  def initialize(input)
    @input    = input
    @counter  = 0
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

  def convert_letters
    split_the_input_text.map do |letter|
      ALPHABET[letter]
    end
  end

  def join_letters
    first, second, third   = [], [], []

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
      final_string << first_line.slice!(0..79)  + "\n"
      final_string << second_line.slice!(0..79) + "\n"
      final_string << third_line.slice!(0..79)  + "\n"
    end
    final_string
  end
end
