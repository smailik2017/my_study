require_relative 'task_8_user_class'
##
# Метод для создания экземпляра пользователя
##
def user(f_name, s_name, t_name, score)
  user = User.new
  user.set_f_name(f_name)
  user.set_s_name(s_name)
  user.set_t_name(t_name)
  user.set_score(score)
  user
end

##
# Загрузка тестовых данных
##
users = []
users << user('Иванов1', 'Иван1', 'Иванович1', rand(1..5))
users << user('Иванов2', 'Иван2', 'Иванович2', rand(1..5))
users << user('Иванов3', 'Иван3', 'Иванович3', rand(1..5))
users << user('Иванов4', 'Иван4', 'Иванович4', rand(1..5))
users << user('Иванов5', 'Иван5', 'Иванович5', rand(1..5))
users << user('Иванов6', 'Иван6', 'Иванович6', rand(1..5))
users << user('Иванов7', 'Иван7', 'Иванович7', rand(1..5))
users << user('Иванов8', 'Иван8', 'Иванович8', rand(1..5))
users << user('Иванов9', 'Иван9', 'Иванович9', rand(1..5))
users << user('Иванов10', 'Иван10', 'Иванович10', rand(1..5))

##
# Расчет среднего и вывод пользователей у кого балл выше среднего
##
mid = users.sum(&:score) / users.size
puts "Средняя: #{mid}"
users.select { |val| val.score > mid }.each do |val|
  puts "#{val.f_name} #{val.s_name} #{val.t_name} -- балл = #{val.score}"
end
