require './lib/night_reader'

 filename = ARGV[0]
 input = File.read(filename).chomp
 character = NightReader.new(input)
 output = character.encode_to_plain.join("\n")
 File.write(ARGV[1], output)
 puts "Created '#{ARGV[1]}' containing #{character.count} characters"
