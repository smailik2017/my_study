# frozen_string_literal: true

arr = File.readlines('task_3.txt', chomp: true)
          .uniq
          .sort_by(&:size)

min_length = arr[0].length
max_length = arr[arr.length - 1].length

puts 'Strings with MINIMAL length'
i = 0
while arr[i].length == min_length
  p "#{arr[i]} - length: #{arr[i].length}"
  i += 1
end

puts 'Strings with MAXIMAL length'
i = arr.length - 1
while arr[i].length == max_length
  p "#{arr[i]} - length: #{arr[i].length}"
  i -= 1
end
