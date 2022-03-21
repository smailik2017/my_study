require 'httparty'

lines_count = HTTParty.get('https://gb.ru/courses').lines.count
puts "Lines count = #{lines_count}"
