# frozen_string_literal: true

##
# Расчет по формуле БИНЕ
##
def bine(n)
  n -= 1
  phi = (1 + (5**0.5)) / 2
  (((phi**n) - ((-phi)**-n)) / (5**0.5)).round
end

def fibonacci(n)
  (1..n).each do |x|
    yield bine(x)
  end
end

fibonacci(10) { |f| print "#{f}\n" }
