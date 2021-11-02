# frozen_string_literal: true

class Vector
  attr_accessor :begin_point, :end_point

  def initialize(pnt)
    @begin_point = Point.new(pnt[0], pnt[1])
    @end_point = Point.new(pnt[2], pnt[3])
  end

  def distance
    a = end_point.x - begin_point.x
    b = end_point.y - begin_point.y
    Math.sqrt(a**2 + b**2)
  end

  class Point
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end
end

pnt = Array.new(4).map! { |_x| x = rand(10) }

v1 = Vector.new pnt
p v1.begin_point
p v1.end_point

p v1.distance

v1.end_point = Vector::Point.new(10, 10)
p v1.begin_point
p v1.end_point

p v1.distance
