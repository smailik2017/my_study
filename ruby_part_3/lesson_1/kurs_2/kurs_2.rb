path = ARGV[0]

def scan(path)
  entries = Dir.new(path)
    .entries
    .reject { |x| %[. ..].include? x }
    .map { |x| File.join(path, x) }
  
  entries.reduce(0) do |counter, item|
    counter += scan(item) if File.directory?(item)
    counter += (File.extname(item) == '.rb') ? File.readlines(item).size : 0 
  end
end

p scan(path)
