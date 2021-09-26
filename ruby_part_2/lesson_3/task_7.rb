# frozen_string_literal: true

def my_reduce(val)
  return val unless block_given?

  result = 0
  val.each_with_index do |el, index|
    result = if index.zero?
               el
             else
               yield result, el
             end
  end
  result
end

arr = [2, 3, 4, 5, 6, 7, 8, 9]

puts "Original = #{arr}"
puts "Standart REDUCE = #{arr.reduce { |x, y| x + y }}"
puts "My REDUCE = #{my_reduce(arr) { |x, y| x + y }}"
