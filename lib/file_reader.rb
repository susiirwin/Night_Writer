class FileReader
  def read
   filename = ARGV[0]
   File.read(filename)
 end

  def readlines
    filename = ARGV[0]
    File.readlines(filename)
  end
end
