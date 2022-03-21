require 'faraday'

uri = URI('https://gb.ru/courses')
lines_count = Faraday.get(uri).body.lines.count
puts "Lines count = #{lines_count}"
