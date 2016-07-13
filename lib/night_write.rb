require './lib/night_writer'

 filename = ARGV[0]
 input = File.read(filename).chomp
 character = NightWriter.new(input)
 output = character.encode_to_braille.join("\n")
 File.write(ARGV[1], output)
 puts "Created '#{ARGV[1]}' containing #{character.count} characters"
