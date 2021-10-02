class Foo
  attr_accessor :vv
  def initialize(arg = [].to_h)
    @vv = arg
  end
end

hash = {
  red: 'RED',
  black: 'BLACK',
  green: 'GREEN'
}

hash.each do |method, name|
  define_method method do
    name
  end
end


foo = Foo.new(hash)

p foo.vv
p foo.green
p foo.black

