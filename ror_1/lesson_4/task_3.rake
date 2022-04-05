desc "Выводим количество файлов с расширегием *.rb"
task :task_3 do
  puts Dir['**/*.rb'].count
end
