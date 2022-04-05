def age(birthday)
  now = Time.now.utc.to_date
  now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
end

desc "Параметр - дата рождения в формате DD.MM.YYYY, в ответ выводим возраст"
task :task_2, [:date_of_birth] do |t, args|
  in_arg = args[:date_of_birth].split('.')
  puts age(Time.new(in_arg[2], in_arg[1], in_arg[0]))
end
