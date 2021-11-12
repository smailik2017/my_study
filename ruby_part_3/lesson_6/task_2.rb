# frozen_string_literal: true

# Пусть в переменной matrix задана квадратная матрица, например:
# matrix = [
# [1, 2, 3],
# [4, 5, 6],
# [7, 8, 9]
# ]
# Следом называют сумму диагональных элементов. Для приведенного примера искомое
# значение: 1 + 5 + 9 = 15. Разработайте метод, который вычисляет след квадратной матрицы
# произвольного размера и содержания.

matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

def matrix_trace(matrix)
  sum = 0
  [*0..matrix[0].length - 1].each { |x| sum += matrix[x][x] }
  sum
end

p matrix_trace(matrix)
