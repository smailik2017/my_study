class Foo
  def initialize(arg = [])
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

