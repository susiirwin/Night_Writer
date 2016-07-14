require './lib/night_reader'

 filename = ARGV[0]
 input = File.read(filename).chomp
 character = NightReader.new(input)
 output = character.convert_braille
 File.write(ARGV[1], output)
 puts "Created '#{ARGV[1]}' containing #{character.count} characters"
