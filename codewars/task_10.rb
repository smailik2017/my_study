# frozen_string_literal: true

def pick_peaks(arr)
  pos = []
  peaks = []
  i = 0
  n = arr.size
  while i < n
    p arr[i]
    if arr[i + 1] < arr[i]
      pos << i
      peaks << arr[i]
      i += 1
    end
    i += 1
  end

  { 'pos' => pos, 'peaks' => peaks }
end

arr = [2, 1, 3, 1, 2, 2, 2, 2, 1]

p pick_peaks(arr)
