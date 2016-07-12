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
end
