require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def setup
    @night_writer = NightWriter.new("ab")
  end

  def test_it_can_count
    night_writer = NightWriter.new("Hello World")
    assert_equal 11, night_writer.count
  end

  def test_it_can_convert_a_single_letter
    night_writer = NightWriter.new("a")

    assert_equal ["0.", "..", ".."], night_writer.encode_to_braille
  end

  def test_it_can_convert_two_letters
    expected = ["0.0.", "..0.", "...."]
    assert_equal expected, @night_writer.encode_to_braille
  end

  def test_it_can_seperate_two_letters
    assert_equal ["a", "b"], @night_writer.split_the_input_text
  end

  def test_it_can_convert_and_save_it
    expected = [["0.", "..", ".."], ["0.", "0.", ".."]]
    assert_equal expected, @night_writer.convert_letters
  end

  def test_it_stores_two_letters_encoded_in_array
    expected = ["0.0.", "..0.", "...."]
    assert_equal expected, @night_writer.join_letters
  end

  def test_it_can_convert_an_uppercase_letter
    night_writer = NightWriter.new("A")
    expected = ["..0.", "....", ".0.."]
    assert_equal expected, night_writer.encode_to_braille

  end

  def test_it_can_convert_two_uppercase_letters
     night_writer = NightWriter.new("AB")
     expected = ["..0...0.", "......0.", ".0...0.."]
     assert_equal expected, night_writer.encode_to_braille
  end

  def test_it_can_convert_an_uppercase_letter_a_lowercase_letter
    night_writer = NightWriter.new("Ab")
    expected = ["..0.0.", "....0.", ".0...."]
    assert_equal expected, night_writer.encode_to_braille
  end

  def test_it_can_get_the_length_of_output_line
    night_writer = NightWriter.new("a")
    assert_equal 2, night_writer.row_length
  end

end
