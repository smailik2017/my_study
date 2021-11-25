# frozen_string_literal: true

arr = [1, 2, 1, 4, 5]

def find_it(seq)
  seq.uniq.each { |x| return x if seq.count(x).odd? }
end

p find_it(arr)
