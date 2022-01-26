class User
  attr_accessor :rank, :progress
  def initialize
    self.rank = -8
    self.progress = 0
  end

  def inc_progress(val)
    if val == self.rank
      self.progress += 3
    elsif (self.rank - val) == 1
      self.progress += 1
    elsif (self.rank - val) >= 2
      self.progress += 0
    else 
      d = val - self.rank
      self.progress = self.progress + (10 * d * d)
    end
    
    while self.progress >= 100 do
      self.rank += 1
      self.rank += 1 if self.rank == 0
      self.progress -= 100
    end
  end
end

u = User.new
p "User rank = #{u.rank}"
p "User progress = #{u.progress}"

u.inc_progress(-7)
p "User rank = #{u.rank}"
p "User progress = #{u.progress}"

u.inc_progress(-5)
p "User rank = #{u.rank}"
p "User progress = #{u.progress}"
