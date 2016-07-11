require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/night_writer'

class Night_Writer_Test
  def test_it_makes_a_new_file_with_input
    night_writer = NightWriter.new(input)
    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_write_the_read_text_and_print_it
    night_writer = NightWriter.new
    file_reader = FileReader.new
    variable = file_reader.readlines(filename)
    assert_value "Hello world",
  end
end
