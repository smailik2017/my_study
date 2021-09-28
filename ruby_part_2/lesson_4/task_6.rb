class Integer
  def  minutes
    self * 60
  end
  
  def hours
    self * 60 * 60
  end
  
  def days
    self * 24 * 60 * 60
  end
end

p 5.minutes
p 2.hours
p 1.days

