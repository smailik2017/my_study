class Cube
  include Comparable
  attr_accessor :points
  @@cubes = []
  
  def initialize(length)
    @points = [
      Point.new(0,0,0), 
      Point.new(length,0,0),
      Point.new(length, length, 0)
      ]
    # return 'Cube exists!' if @@cubes.include?(self)
    @@cubes << self
  end

  def self.show_all_cubes
    @@cubes.each { |x| p x }
  end
  
  def <=>(other)
    (points[0] <=> other.points[0]) + (points[1] <=> other.points[1]) + (points[2] <=> other.points[2])
  end
  
  class Point
    include Comparable
    attr_accessor :x, :y, :z
    def initialize (x, y, z)
      @x = x
      @y = y
      @z = z
    end
    
    def <=>(other)
      (x <=> other.x) + (y <=> other.y) + (z <=> other.z)
    end
    
  end
end

cube1 = Cube.new(10)
cube2 = Cube.new(20)
cube3 = Cube.new(30)
cube4 = Cube.new(10)
cube5 = Cube.new(10)
cube6 = Cube.new(40)

Cube::show_all_cubes
