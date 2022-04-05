desc "Выводим колличество строк в руби файлах"
task :task_4 do
  cnt = 0
  Dir['**/*.rb'].each do |x|
    cnt += File.open(x).read.lines.count
  end
  puts cnt
end
