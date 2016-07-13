require './lib/night_writer'

class NightWrite
  attr_reader :write_to_braille

  def self.read(filename)
    filename = ARGV[0]
    @message = File.read(filename).chomp
  end

  def self.write(filename, message)
    english = NightWriter.new(@message)
    write_to_braille = english.stacking
    english_file = File.open(ARGV[1], 'w')
    File.write(english_file, write_to_braille)
  end
end

# filename = './message.txt'
# puts NightWrite.read(filename)

#
# message = ARGV[0]
# write_to_braille = ARGV[1]


# input_text = NightWriter.new(input)
# puts "Created '#{ARGV[1]}' containing #{input_text.count} characters"


# @write_to_braille = @message.read
