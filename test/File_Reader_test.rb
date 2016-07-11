require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/file_reader'

class FileReaderTest < Minitest::Test
  def test_it_reads_a_file
    file_reader = FileReader.new
    puts file_reader.read
  end
end
