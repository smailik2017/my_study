def step(a, b)
  return -1 if a.nil?
  return -1 if b.nil?
  return b - a
end

def solution(arr)
  i = 0
  n = arr.size - 1
  result = []
  while i <= n
    start = nil
    stop = nil
    while step(arr[i], arr[i+1]) == 1
      start = arr[i] if start.nil?
      i += 1
    end
    stop = arr[i]
    if start.nil? || stop.nil?
      result << arr[i]
    else
      if stop - start == 1
        result << start
        result << stop
      else
        result << "#{start}-#{stop}"
      end
    end
    i += 1
  end
  result.join(',')
end

test1 = [-6, -1, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20, 25, 30, 31, 35]

p solution(test1)

# test1 = [-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]

# p solution(test1)

test1 = [-72, -71, -70, -68, -66, -64, -63, -61, -59, -57, -55, -53, -51, -50, -49, -47, -45, -43, -42, -40, -39, -37, -35, -34, -33, -32, -31, -29, -27]

p solution(test1)