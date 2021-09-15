require 'date'

b = ARGV[0].split('.')
d_birth = Date.new(b[2].to_i, b[1].to_i, b[0].to_i)
d_now = DateTime.now.to_date
d_birth_days_to_end_m = Date.new(d_birth.year, d_birth.month, -1).day - d_birth.day 

##
# Месяц рождения больше текущего месяца (Полный год ещё не завершён, ДР еще не наступил в этом году)
## 
if d_birth.month > d_now.month
  years = d_now.year - d_birth.year - 1
  months = 12 - d_birth.month + d_now.month - 1
  days = d_birth_days_to_end_m + d_now.day
##
# Месяц рождения меньше текущего месяца (Полный год завершён, ДР уже прошёл)
## 
elsif d_birth.month < d_now.month
  years = d_now.year - d_birth.year
  months = d_now.month - d_birth.month - 1
  days = d_birth_days_to_end_m + d_now.day
##
# Месяц рождения совпадает с текущим месяцем, но день месяца рождения больше текущего дня 
# (Полный год ещё не завершён, ДР ещё не наступил)
## 
elsif d_birth.day > d_now.day
  years = d_now.year - d_birth.year - 1
  months = 11
  days = days = d_birth_days_to_end_m + d_now.day
##
# Месяц рождения совпадает с текущим месяцем, но день месяца рождения меньше текущего дня 
# (Полный год завершён, ДР уже наступил)
## 
elsif d_birth.day < d_now.day
  years = d_now.year - d_birth.year
  months = 0
  days = days = d_now.day - d_birth.day
##
# День рождения сегодня !
## 
else
  years = d_now.year - d_birth.year
  months = 0
  days = 0
end


puts "Полных лет: #{years}"
puts "Месяцев: #{months}"
puts "Дней: #{days}"


