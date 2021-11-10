# frozen_string_literal: true

##
# Класс, который определяет Куб по восьми точкам. Если все вершины разных кубов совпадут, значит КУБЫ одинаковые
class Cube
  attr_accessor :points

  def self.new(points)
    if cube_exists?(points)
      puts 'Cube already exists!!!'
    else
      obj = allocate
      obj.points = points
    end
  end

  def self.cube_exists?(points)
    Cube.all_cubes.each do |cube|
      res = true
      cube.points.each do |x|
        res &= points.include?(x)
      end
      return true if res
    end
    false
  end

  def self.all_cubes
    ObjectSpace.each_object(self).to_a
  end
end

##
# Класс точки в 3D пространстве
class Point
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  ##
  # Нужен, чтобы сработало include? в методе cube_exists
  def ==(other)
    x == other.x and y == other.y and z == other.z
  end
end

## Уникальный КУБ №1
Cube.new([Point.new(1, 1, 1),
          Point.new(2, 2, 2),
          Point.new(3, 3, 3),
          Point.new(4, 4, 4),
          Point.new(5, 5, 5),
          Point.new(6, 6, 6),
          Point.new(7, 7, 7),
          Point.new(8, 8, 8)])

## Дублирующий КУБ. Вершины в той же последовательности
Cube.new([Point.new(1, 1, 1),
          Point.new(2, 2, 2),
          Point.new(3, 3, 3),
          Point.new(4, 4, 4),
          Point.new(5, 5, 5),
          Point.new(6, 6, 6),
          Point.new(7, 7, 7),
          Point.new(8, 8, 8)])

## Уникальный КУБ №2
Cube.new([Point.new(1, 5, 1), # <--- #
          Point.new(2, 2, 2),
          Point.new(3, 3, 3),
          Point.new(4, 4, 4),
          Point.new(5, 5, 5),
          Point.new(6, 6, 6),
          Point.new(7, 7, 7),
          Point.new(8, 8, 8)])

## Уникальный КУБ №3
Cube.new([Point.new(1, 1, 1),
          Point.new(2, 2, 2),
          Point.new(3, 3, 3),
          Point.new(4, 4, 4),
          Point.new(5, 15, 5), # <--- #
          Point.new(6, 6, 6),
          Point.new(7, 7, 7),
          Point.new(8, 8, 8)])

## Дублирующийся КУБ с КУБОМ №2
Cube.new([Point.new(7, 7, 7),
          Point.new(2, 2, 2),
          Point.new(3, 3, 3),
          Point.new(4, 4, 4),
          Point.new(5, 5, 5),
          Point.new(6, 6, 6),
          Point.new(1, 5, 1), # <--- #
          Point.new(8, 8, 8)])

puts Cube.all_cubes
