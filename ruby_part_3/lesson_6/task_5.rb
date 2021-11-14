# frozen_string_literal: true

# При помощи итератора reduce получите из массива [1, 2, 3, 4, 5] новый массив, содержащий
# только нечетные элементы: [1, 3, 5].

arr = [1, 2, 3, 4, 5]

a = [arr[0]] unless arr[0].even?
arr.reduce { |_x, y| a << y unless y.even? }
p a
