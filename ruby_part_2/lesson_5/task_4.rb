class Foo
  attr_accessor :vv
  def initialize(arg = [])
    @vv = arg
    arg.each do |method, name|
      define_singleton_method method do
        name
      end
    end
  end
end

hash = {
  black: 'BLACK',
  green: 'GREEN'
}

p hash

foo = Foo.new(hash)
p foo.green
p foo.black

