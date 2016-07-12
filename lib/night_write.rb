# this is the runner file
require './lib/night_writer'

filename = ARGV[0]
input = File.read(filename).chomp


input_text = NightWriter.new(input)
#once we create the encode method, it goes in line 9 where we have input * 3
output = input_text.input * 3
File.write(ARGV[1], output)
puts "Created '#{ARGV[1]}' containing #{input_text.count} characters"
