# frozen_string_literal: true

def write_part(file_name, value)
  File.open(file_name, 'w') do |file|
    file.write(value)
  end
end

FILE_NAME = ARGV[0]
n1 = File.size(FILE_NAME)

b1 = n1 / 10 + 1
m1 = n1 % 10
n2 = n1 - m1 * b1
m2 = 10 - m1
b2 = n2 / m2

file_part_no = 0
File.open(FILE_NAME) do |file|
  write_part("#{FILE_NAME}_x#{file_part_no += 1}", file.read(b2)) while file_part_no < m2
  write_part("#{FILE_NAME}_x#{file_part_no += 1}", file.read(b1)) until file.eof?
end
