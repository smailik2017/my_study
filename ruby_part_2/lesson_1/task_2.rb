i = 0
n = 10
arr = []
while i < n 
  arr << rand(0..99)
  i += 1
end

p arr
p "Максимальное: #{arr.max}"
p "Минимальное: #{arr.min}"
