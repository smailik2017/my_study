colors = []
while true
  print 'Введите цвет: '
  color = gets.chomp
  break if color == 'stop'
  colors << color
end

p colors