require './lib/dictionary'

class NightReader
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def translate_to_plain
    input.map do |symbol|
      BRAILLE_ALPHABET[symbol]
    end
  end

  def join_the_characters
    input.join
  end

  def unjoin_the_letters

  end

end
