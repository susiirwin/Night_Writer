require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'

class NightReaderTest < Minitest::Test
  def test_it_can_convert_to_array
    night_reader = NightReader.new("0.\n..\n..\n")

    expected = ["0.", "..", ".."]

    assert_equal expected, night_reader.get_array
  end

  def test_it_can_convert_a_single_letter
    night_reader = NightReader.new("0.\n..\n..\n")

    expected = "a"

    assert_equal expected, night_reader.convert_braille
  end

  def test_it_can_unjoin_the_letters
    skip
    night_reader = NightReader.new("0.0.\n..0.\n....\n")

    expected = ["ab"]

    assert_equal expected, night_reader.unjoin_the_letters
  end

end
