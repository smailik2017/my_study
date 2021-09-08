def even_odd(a)
  return 'Чётное число' if a % 2 == 0
  return 'Нечётное число'
end

def sum(a)
  sum = 0
  a.each do |num|
    sum += num.to_i
  end
  return sum
end

def fact(n)
  return n * fact(n-1) if n > 1
  return 1
end

print 'Введите число: '
a = gets.to_i
puts "Число #{a} - #{even_odd(a)}"

print 'Введите числа через пробел (например: 1 2 4 5): '
a = gets
a = a.split(' ')
puts "Сумма чисел #{a} равно: #{sum(a)}"

print 'Введите число: '
a = gets.to_i
puts "Факториал числа #{a} равен #{fact(a)}"

