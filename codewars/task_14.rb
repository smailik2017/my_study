# frozen_string_literal: true

my_math = { one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, plus: '+', minus: '-',
            times: '*', devide_by: '/' }

@exp = []
my_math.each do |key, val|
  define_method key do |*_arg|
    @exp << val
    if @exp.size == 3
      result = @exp[2].send(@exp[1], @exp[0])
      @exp = []
      return result
    end
    val
  end
end

p one(plus(two))
p four(devide_by(two))
p one
