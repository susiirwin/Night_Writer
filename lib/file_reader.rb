class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

file_reader = FileReader.new
puts file_reader.read
