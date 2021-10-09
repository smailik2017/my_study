file = File.open('words.txt')
s = file.readlines(chomp: true)

class Array
  def find(val)
    puts self.grep(/^#{val}/)
  end
end


s.find('ко')


