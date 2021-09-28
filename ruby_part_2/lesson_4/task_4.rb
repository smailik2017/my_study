class Factory
  @@teddy_bears = []
  @@balls = []
  @@cubes = []
  @@total = 0
  
  def build(toy)
    @@total += 1
    case toy
    when :teddy_bear
      @@teddy_bears << TeddyBear.new
    when :ball
      @@balls << Ball.new
    when :cube
      @@cubes << Cube.new
    end
  end
  
  class TeddyBear
  end
  
  class Ball
  end
  
  class Cube
  end

  def show_total
    @@total
  end

  def offers
    [[:teddy_bear, @@teddy_bears.size], [:ball, @@balls.size], [:cube, @@cubes.size]].to_h
  end

end

f = Factory.new
f.build(:ball)
f.build(:ball)
f.build(:cube)
f.build(:teddy_bear)
f.build(:teddy_bear)
f.build(:teddy_bear)

puts "Tital toys is #{f.show_total}"
puts "We have: #{f.offers}"

