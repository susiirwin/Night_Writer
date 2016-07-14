require './dictionary'

class NightReader
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def get_array
    smashed_braille = input.gsub("\n", "").chars.each_slice(2).to_a
    result = smashed_braille.map do |single|
      single.join
    end
    result

  end

  def convert_braille
    letter = BRAILLE_ALPHABET[get_array]
    letter
  end

  def count
    input.length
  end


end
