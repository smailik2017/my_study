class Color
  def colors(a)
    case a
    when 1
      'красный' 
    when 2
      'оранжевй'
    when 3
      'желтый'
    when 4
      'зеленый'
    when 5
      'голубой'
    when 6
      'синий'
    when 7
      'фиолетовый'
    end
  end
end

bb = Color.new
p bb.colors(3)
