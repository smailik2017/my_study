# frozen_string_literal: true

filesize = ARGV[0].to_i
filename = ARGV[1]

if File.exist?(filename)
  puts 'File exists, do nothing.'
else
  File.open(filename, 'w') do |file|
    file.write('0' * filesize)
  end
end
