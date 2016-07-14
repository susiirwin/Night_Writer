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
    BRAILLE_ALPHABET[get_array]
  end

  def join_the_characters
    input.join
  end

  def unjoin_the_letters

  end

end
