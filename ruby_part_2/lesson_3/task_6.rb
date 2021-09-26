def my_select(val)
  return val if !block_given?
  result = []
  val.each do |el|
    result << el if yield el
  end
  result
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Original = #{arr}"
puts "Standart SELECT = #{arr.select { |x| !x.even? }}"
puts "My SELECT = #{my_select(arr) { |x| !x.even? }}"




