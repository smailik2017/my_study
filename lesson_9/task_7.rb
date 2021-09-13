##
# Рекурсивное решение #
##
def fib(a, b, n)
  return fib(b, a+b, n-1) if n != 2
  p b
  2
end

##
# Прямой метод расчета
##
def fib_1(a, b, n)
  i = 1
  while i < n-1 do
    c = a + b
    a = b
    b = c
    
    i +=1
  end
  p c
end

##
# Расчет по формуле БИНЕ
##
def bine(n)
  n -=1
  phi = (1 + (5 ** 0.5)) / 2
  p (((phi ** n) - ((-phi) ** -n)) / (5 ** 0.5)).round
end

fib(0, 1, 10)
fib_1(0, 1, 10)
bine(10)