desc "Колличество баз PG в проекте"
task :task_5 do
  arr = File.open('config/database.yml').read.lines
  puts arr.to_s
end
