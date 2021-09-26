# frozen_string_literal: true

def my_map(val)
  return val unless block_given?

  result = []
  val.each do |el|
    result << (yield el)
  end
  result
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Original = #{arr}"
puts "Standart MAP = #{arr.map { |x| x + x }}"
puts "My MAP: #{my_map(arr) { |x| x + x }}"
