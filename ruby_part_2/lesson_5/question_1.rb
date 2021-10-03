class Foo
end

hash = {
  black: 'BLACK',
  green: 'GREEN'
}

foo = Foo.new

##
# Почему этот метод можно вызвать на объекте ???
##
define_method :green do 
  self.class
end

##
# Этот метод нельзя вызвать на объекте ???
##
def black
  'BLACK'
end

##
# Работает
##
p foo.green
p green
##
# Этот метод работает на любом объекте ... 
##
s = 'sss'
p s.green


##
# Падаем и понятно почему. Метод не определен в классе.
#
p foo.black


