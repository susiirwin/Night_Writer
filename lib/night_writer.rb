require './dictionary'

class NightWriter
  attr_reader :input,
              :counter

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

  def counter_work
    convert_letters.each do |letter|
      if letter[0][0].length == 4
        @counter += 4
      else
        @counter += 2
      end
    end
    @counter
  end

  def join_letters
    first   = []
    second  = []
    third   = []

    convert_letters.each do |letter|
        first   << letter[0]
        second  << letter[1]
        third   << letter[2]
    end
    [first.join, second.join, third.join]
  end

  def row_length
    join_letters.first.length
  end
end

# @counter += 1
