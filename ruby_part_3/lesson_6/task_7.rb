# frozen_string_literal: true

# Необязательный аргумент метода to_a должен задавать разрядность числа. Например, для
# восьмеричных и шестнадцатеричных форматов метод должен возвращать следующие
# массивы:
# 10.to_s(8) # [1, 2]
# 10.to_s(16) # ['a']

class Integer
  def to_a(n)
    to_s(n).split('').map { |x| '0123456789'.include?(x) ? x.to_i : x }
  end
end

num = 10
p num.to_a(2)
p num.to_a(8)
p num.to_a(16)
