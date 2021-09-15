class User
  def fio
    @fio
  end

  def set_fio(fio)
    @fio = fio
  end
end

print 'Ввведите ФИО для пользователя № 1: '
fio_1 = gets.chomp
print 'Ввведите ФИО для пользователя № 2: '
fio_2 = gets.chomp
print 'Ввведите ФИО для пользователя № 3: '
fio_3 = gets.chomp


users = User.new, User.new, User.new

users[0].set_fio(fio_1)
users[1].set_fio(fio_2)
users[2].set_fio(fio_3)

p users[0].fio
p users[1].fio
p users[2].fio