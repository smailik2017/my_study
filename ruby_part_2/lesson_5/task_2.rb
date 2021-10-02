class User
  attr_accessor :fname, :sname, :lname
  def initialize(fname, sname, lname)
    @fname = fname
    @sname = sname
    @lname = lname
  end
end

u1 = User.new('Иван', 'Иванович', 'Иванов')
puts "User = #{u1.fname} #{u1.sname} #{u1.lname}"
u1.fname = 'Юзер'
u1.sname = 'Юзерович'
u1.name = 'Юзеров'
puts "User = #{u1.fname} #{u1.sname} #{u1.lname}"
