class User
  @@counter = 0
  def initialize
    @@counter = @@counter + 1
  end

  def counter
    @@counter
  end

  def set_name(name)
    @name = name
  end

  def name
    @name
  end
end

u1 = User.new
u1.set_name('Maks1')
p u1.counter

u2 = User.new
u2.set_name('Maks2')
p u2.counter

u3 = User.new
u3.set_name('Maks3')
p u3.counter

p 'Статус'
p u1.name
p u2.name
p u3.name
p u1.counter
p u2.counter
p u3.counter
