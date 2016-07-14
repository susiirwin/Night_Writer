require './dictionary'

class NightReader
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def translate_to_plain
    letter = ""
    input.each do |symbol|
      letter << BRAILLE_ALPHABET[symbol].to_s
    end

  end

  def join_the_characters
    input.join
  end

  def unjoin_the_letters

  end

end
