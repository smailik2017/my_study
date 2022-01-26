def solution(arr)
  b = arr.chunk_while { |i, j| i + 1 == j }.map { |x| x.length < 2 ? x : "#{x.first} - #{x.last}" }.join(', ')
  # p b.to_a
  # b.map { |x| x.length < 2 ? x : "#{x.first} - #{x.last}" }.join(', ')
end

test1 = [-6, -1, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20, 25, 30, 31, 35]

p solution(test1)

test1 = [-72, -71, -70, -68, -66, -64, -63, -61, -59, -57, -55, -53, -51, -50, -49, -47, -45, -43, -42, -40, -39, -37, -35, -34, -33, -32, -31, -29, -27]

p solution(test1)