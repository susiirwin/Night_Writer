require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def setup
    @night_writer = NightWriter.new("Hello World")
  end

  def test_it_can_count
    assert_equal 11, @night_writer.count
  end

  def test_it_can_convert_a_single_letter
    night_writer = NightWriter.new("a")

    assert_equal ["0.", "..", ".."], night_writer.encode_to_braille
  end

  def test_it_can_convert_two_letters
    skip
    night_writer = NightWriter.new("ab")
    expected =
    assert_equal expected, night_writer.encode_to_braille
  end

  def test_it_can_convert_two_letters
    night_writer = NightWriter.new("ab")
    assert_equal ["a", "b"], night_writer.split_the_input_text
  end

  def test_it_can_convert_and_save_it
    night_writer = NightWriter.new("ab")
    expected = [["0.", "..", ".."], ["0.", "0.", ".."]]
    assert_equal expected, night_writer.convert_letters
  end

  def test_it_can_line_letters_up_correctly
    night_writer = NightWriter.new("ab")
    expected = [[1,0,1,0], [0,0,1,0], [0,0,0,0]]
              ["0.0.", "..0." "...."]
    assert_equal expected, night_writer.combine
  end
end
