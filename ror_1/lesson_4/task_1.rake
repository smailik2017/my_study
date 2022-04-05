desc "Пишем текущие дату и время в файл tmp/development.txt"
task :task_1 do
  File.write('tmp/development.txt', "#{Date.today}\n#{Time.now.strftime('%T')}\n")
end
