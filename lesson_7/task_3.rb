print 'Введите число: '
v2 = gets.to_i

if v2.to_s(2)[-1].to_i.zero?
  puts "Четное"
else
  puts "Не четное"
end