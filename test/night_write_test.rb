require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'

class NightWriteTest < Minitest::Test
  def test_it_can_read_and_write_from_a_file
    filename = ARGV[0]
    night_writer = NightWriter.new(filename)
    NightWrite.read(filename)
    output_filename = './braille.txt'
    NightWrite.write(output_filename, "hello world")
    assert_equal "hello world", NightWrite.read(output_filename)
  end
end
