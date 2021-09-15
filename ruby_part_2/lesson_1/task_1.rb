print 'Введите число A: '
a = gets.to_i

b = 0
while b == 0 
  print 'Введите число B: '
  b = gets.to_i
end

puts "A / B = #{a / b.to_f}"