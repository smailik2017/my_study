class Color
  def colors(a)
    return nil if a < 1 || a > 7
    %w[красный оранжевый желтый зеленый голубой синий фиолетовый][a - 1]
  end
end

p Color.new.colors 8
