require 'date'

def bissextile?(a)
  return true if Date.new(a.to_i, 2, -1).day == 29
  return false
end

print 'Введите год: '
a = gets.chomp
if bissextile?(a)
  p 'Високосный год' 
else
  p 'Обычный год'
end

