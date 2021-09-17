planets = [["Меркурий", 330.2], ["Венера", 4868.5], ["Земля", 5973.6],
          ["Марс", 641.85], ["Юпитер", 1898600], ["Сатурн", 568460], 
          ["Уран", 86832], ["Нептун", 102430]].to_h



arr = planets.map { |key, val| val  }.sort
min_border = arr[2]
max_border = arr[-3]

puts "Минимальная граница: #{min_border}"
light = planets.select { |key, val| key if val <= min_border}
puts "Три легчайшие планеты: #{light}"

puts "Мвксимальная граница: #{max_border}"
heavy = planets.select { |key, val| key if val >= max_border}
puts "Три тяжелейшие планеты: #{heavy}"

