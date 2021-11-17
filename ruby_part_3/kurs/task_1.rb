# frozen_string_literal: true

# Создайте программу, которая разбивает файл на десять частей. Рядом с существующим
# файлом должны появиться десять новых файлов, к расширению которых добавляются
# суффиксы x01, x02, ..., x10. В случае, если размер файла меньше 10-ти байтов, программа
# должна сообщить о невозможности произвести разбиение.

def split_file(file_name, chunks)
  check_str = 'cat '
  f = File.open(file_name, 'rb')
  n = f.size
  raise 'File size too small, must be greater than 10 bytes !!!!' if f.size <= 10

  chunk_size = n / chunks
  next_pos = chunk_size
  chunk_num = 1
  chunk_file = File.open("#{file_name}_x#{chunk_num.to_s.rjust(2, '0')}", 'wb')
  p "creating chunk file #{File.basename(chunk_file.path)}"

  check_str += "#{File.basename(chunk_file.path)} "

  f.each_byte do |byte|
    chunk_file.write(byte.chr)

    next unless (f.pos == next_pos) && (chunk_num != chunks)

    chunk_file.close unless chunk_file.closed?
    chunk_num += 1
    chunk_file = File.open("#{file_name}_x#{chunk_num.to_s.rjust(2, '0')}", 'wb')
    p "creating chunk file #{File.basename(chunk_file.path)}"
    check_str += "#{File.basename(chunk_file.path)} "
    next_pos += chunk_size
  end
  chunk_file.close unless chunk_file.closed?
  check_str
end

ARGV[0].nil? ? (raise 'Enter file name, as first argument !!!') : (file_name = ARGV[0])
ARGV[1].nil? ? (raise 'Enter number of chunks, as second argument !!!') : (chunks = ARGV[1].to_i)

check_cmd = split_file(file_name, chunks)

p '---------'
p 'Run this command from console, to view source file from chunks: '
p check_cmd
