# frozen_string_literal: true

@res = []

def calculate(exp)
  @res = []
  a = exp[0]
  b = exp[2]
  return a + b if exp[1] == '+'
  return a - b if exp[1] == '-'
  return a * b if exp[1] == '*'
  return a / b if exp[1] == '/'
end

def zero(*_arg)
  @res << 0
  calculate @res.reverse if @res.size == 3
end

def one(*_arg)
  @res << 1
  calculate @res.reverse if @res.size == 3
end

def two(*_arg)
  @res << 2
  calculate @res.reverse if @res.size == 3
end

def three(*_arg)
  @res << 3
  calculate @res.reverse if @res.size == 3
end

def four(*_arg)
  @res << 4
  calculate @res.reverse if @res.size == 3
end

def five(*_arg)
  @res << 5
  calculate @res.reverse if @res.size == 3
end

def six(*_arg)
  @res << 6
  calculate @res.reverse if @res.size == 3
end

def seven(*_arg)
  @res << 7
  calculate @res.reverse if @res.size == 3
end

def eight(*_arg)
  @res << 8
  calculate @res.reverse if @res.size == 3
end

def nine(*_arg)
  @res << 9
  calculate @res.reverse if @res.size == 3
end

def plus(*_arg)
  @res << '+'
end

def minus(*_arg)
  @res << '-'
end

def times(*_arg)
  @res << '*'
end

def divided_by(*_arg)
  @res << '/'
end

p seven(times(five)) # must return 35
p four(plus(nine)) # must return 13
p eight(minus(three)) # must return 5
p six(divided_by(two)) # must return 3
