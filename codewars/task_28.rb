def change(arr, m, n)
  c = arr[m]
  arr[m] = arr[n]
  arr[n] = c
  p arr
end

def calc(arr)
  n = arr.size - 1
  p arr[0..n-1]
end


arr = [1, 2, 3]
calc(arr)

1234

1 - 2,3,4
  2
    34
    43
  3
    24
    42
  4
    32
    23

2 - 1,3,4