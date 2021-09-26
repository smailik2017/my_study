# frozen_string_literal: true

def my_select(val)
  return val unless block_given?

  result = []
  val.each do |el|
    result << el if yield el
  end
  result
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Original = #{arr}"
puts "Standart SELECT = #{arr.reject(&:even?)}"
puts "My SELECT = #{my_select(arr, &:odd?)}"
