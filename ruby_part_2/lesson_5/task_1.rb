class Hello
  attr_accessor :greeting
  def initialize(greeting: 'Hello')
    @greeting = greeting
  end
  
  def say
    "Hello, #{@greeting}!"
  end
end

hello = Hello.new(greeting: 'world')
puts hello.say

hello = Hello.new
puts hello.say
