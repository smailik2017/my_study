require 'singleton'

class Settings
  include Singleton
  attr_accessor :param1, :param2
end

s = Settings.instance

s.param1 = 'test1'
s.param2 = 'test2'

p s

