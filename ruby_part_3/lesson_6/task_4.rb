# frozen_string_literal: true

# Создайте собственный вариант итератора cycle, назвав его for. Откройте класс Array и
# добейтесь, чтобы новый итератор был доступен для всех массивов:
# [1, 2, 3].cycle { |x| puts x }

arr = [1, 2, 3]

class Array
  def for(*n)
    if block_given?
      return yield self * n[0] if n.length.positive?

      loop { yield self }
    end
  end
end

puts '------ FOR n times --------'
arr.for(2) { |x| puts x }

puts '------ FOR unlimited ------'
arr.for { |x| puts x }
