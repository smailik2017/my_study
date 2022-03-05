class Interval
  attr_accessor :a, :b
  def initialize(aa, bb)
    self.a = aa
    self.b = bb
  end

  def left_intersection?(int)
    return true if self.a < int.a and self.b > int.a and self.b < int.b
    return false
  end

  def right_intersection?(int)
    return true if self.a > int.a and self.a < int.b and self.b > int.b
    return false
  end

  def not_intersection?(int)
    return true if self.b <= int.a or self.a >= int.b
    return false
  end

  def contains?(int)
    return true if self.a <= int.a and self.b >= int.b
    return false
  end

  def equial?(int)
    return true if self.a == int.a and self.b == int.b
    return false
  end
 
end

test = [
  [1, 8],
  [3, 10],
  [9, 12]
]

intervals_arr = []

test.each do |x|
  intervals_arr << Interval.new(x[0], x[1])
end

def iteration(elem, arr)
  new_intervals = []
  arr.each do |x|
    next if elem.equial?(x)
    if elem.left_intersection?(x)
      i1 = Interval.new(elem.a, x.a)
      i2 = x
      p "left1: #{i1.a} #{i1.b}"
      p "left2: #{i2.a} #{i2.b}"
      new_intervals << i1
      new_intervals << i2
    else
      new_intervals << x
    end
  end
  new_intervals
end

i = 0
while i <= n
iteration(intervals_arr[0], intervals_arr)