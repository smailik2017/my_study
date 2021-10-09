class User
  attr_accessor :first_name, :patronomic_name, :last_name, :email
  
  def initialize
    yield self
  end
end

usr = User.new do |u|
  u.first_name = 'User'
  u.patronomic_name = 'Userovich'
  u.last_name = 'Userov'
  u.email = 'User@user.ru'
end



p usr
