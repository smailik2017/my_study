class User
  attr_accessor :fname, :sname, :lname
  def initialize(fname, sname, lname)
    @fname = fname
    @sname = sname
    @lname = lname
  end
end

class Group
  def initialize(users = [])
    @users = users
  end
  
  def each
    @users.each do |user|
      puts "#{user.fname} #{user.sname} #{user.lname}"
    end
  end
end

users = []
users << User.new('Иван1', 'Иванович', 'Иванов')
users << User.new('Иван2', 'Иванович', 'Иванов')
users << User.new('Иван3', 'Иванович', 'Иванов')

grp = Group.new(users)
grp.each
 



