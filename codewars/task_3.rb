def longest(a1, a2)
  (a1 + a2).split('').sort.uniq.join
end

s1 = 'abc'
s2 = 'adf'

p longest(s1, s2)
