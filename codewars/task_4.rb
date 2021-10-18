# frozen_string_literal: true

def find_even_index(arr)
  n = arr.length
  arr.each_with_index do |_x, i|
    r_sum = l_sum = 0
    r_sum = arr[1..n].sum if i.zero?
    l_sum = arr[0..n-1].sum if i == n
    if i != 0 && i != n
      r_sum = arr[i + 1..n].sum
      l_sum = arr[0..i - 1].sum
    end
    p r_sum
    p l_sum
    return i if r_sum == l_sum
  end
  -1
end


s = [20,10,-80,10,10,15,35]
find_even_index(s)


