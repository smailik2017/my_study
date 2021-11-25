# frozen_string_literal: true

def max_sequence(arr)
  return 0 if arr.empty?

  result = 0
  (0..arr.size - 1).each do |i|
    (i..arr.size - 1).each do |ii|
      xx = arr[i..ii].sum
      result = xx if xx > result
    end
  end
  return 0 if result.negative?

  result
end

arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

p max_sequence(arr)
