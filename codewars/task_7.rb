def isPrime(num)
  return false if num <= 1
  if num < 100 
    (2..num-1).each {|x| return false if num % x == 0}
  else
    (2..100).each {|x| return false if num % x == 0}
  end
  true
end

p isPrime(4)
p isPrime(100)
p isPrime(999)
p isPrime(-7)
p isPrime(958297)


p isPrime(2)
p isPrime(3)
p isPrime(5)
p isPrime(457)
p isPrime(39229)

