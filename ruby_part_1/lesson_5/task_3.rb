class Point
  def set_x(x)
    @x = x
  end

  def x
    @x
  end

  def set_y(y)
    @y = y
  end

  def y
    @y
  end

  def distance_to(point)
    p Math.sqrt(((point.x - x) ** 2) + ((point.y - y) ** 2))
  end
end

def distance(point1, point2)
  p Math.sqrt(((point2.x - point1.x) ** 2) + ((point2.y - point1.y) ** 2))
end

p1 = Point.new
p2 = Point.new

p1.set_x(3)
p1.set_y(6)

p2.set_x(-1)
p2.set_y(5)

p p1.x
p p1.y
p p2.x
p p2.y

distance(p1, p2)
p1.distance_to(p2)
p2.distance_to(p1)