# frozen_string_literal: true

# (*) Создайте программу подсчета количества строк в файлах проекта. Она должен обходить
# все вложенные каталоги проекта и подсчитывать количество строк в файлах с определенными
# расширениями — например, *.rb.

def lines_count(file_name)
  cnt = 0
  File.open(file_name, 'r') do |file|
    file.each { |_x| cnt += 1 }
  end
  cnt
end

def scan(path, ext)
  cnt = 0
  entries = Dir.new(path).entries.reject { |x| %w[. ..].include? x }.map { |x| File.join(path, x) }
  entries.each do |item|
    if File.directory?(item)
      cnt += scan(item, ext)
    elsif File.extname(item) == ext
      cnt += lines_count(item)
    end
  end
  cnt
end

path = File.join('.')
p scan(path, '.rb')
