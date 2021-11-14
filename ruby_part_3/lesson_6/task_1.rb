# frozen_string_literal: true

# Запросите у пользователя число от 1 до 10. В зависимости от введенного числа создайте
# массив, в котором число находится в середине, а влево и вправо уходят убывающие
# последовательности. Например, если пользователь вводит число 3, необходимо получить
# следующий массив [1, 2, 3, 2, 1], в случае числа 4: [1, 2, 3, 4, 3, 2, 1] и т. п.

print 'Enter number from 1 to 10: '
n = gets.to_i
unless [*1..10].include? n
  print 'Enter number from 1 to 10: '
  n = gets.to_i
end

p n

# Вариант 1
p Array.new(n - 1) { |i| i + 1 } + Array.new(n) { |i| n - i }

# Вариант 2
arr = [n]
while n > 1
  n -= 1
  arr << n
  arr.unshift(n)
end
p arr
