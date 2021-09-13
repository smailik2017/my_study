print 'Введие цвет (красный оранжевый желтый зеленый голубой синий фиолетовый)'
v_color = gets.chomp

case v_color
when 'красный'
  p 1
when 'оранжевый'
  p 2
when 'желтый'
  p 3
when 'зеленый'
  p 4
when 'голубой'
  p 5
when 'синий'
  p 6
when 'фиолетовый'
  p 7
else
  p 'неизвестный цвет'
end


