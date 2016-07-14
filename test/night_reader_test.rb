require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'

class NightReaderTest < Minitest::Test
  def test_it_can_cconvert_a_single_character

    night_reader = NightReader.new(["0.", "..", ".."])

    assert_equal "a", night_reader.translate_to_plain
  end

  def test_it_can_unjoin_the_letters
    skip
    ight_reader = NightReader.new(["0.0.", "..0.", "...."])
    expected = ["ab"]

    assert_equal expected, night_reader.unjoin_the_letters
  end

end
