require './lib/night_writer'

class NightWrite
  attr_reader :write_to_braille

  def self.read(filename)
    @message = File.read(filename).chomp
  end

  def self.write(filename, message)
    require 'pry'; binding.pry
    @write_to_braille = @message.read
    output = File.write(write_to_braille, message)
  end
end

# filename = './message.txt'
# puts NightWrite.read(filename)

#
# message = ARGV[0]
# write_to_braille = ARGV[1]


# input_text = NightWriter.new(input)
# puts "Created '#{ARGV[1]}' containing #{input_text.count} characters"
