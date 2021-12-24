def find_pos(n)
  new_n = n.to_s
  n = new_n.size - 1
  i = n
  while i >= 0
    if new_n[i].to_i < new_n[i + 1].to_i
      return i
    end
    i -= 1            
  end
  return -1
end

def next_bigger(n)
  pos = find_pos(n)
  return pos if pos == -1
  str = n.to_s
  str[pos] = n.to_s[pos + 1]
  str[pos + 1] = n.to_s[pos]
  return str
end


puts "1234567908"
puts 1234567908.class
puts next_bigger(1234567908)
puts "59884848483559"
puts 59884848483559.class
puts next_bigger(59884848483559)
puts "12"
puts next_bigger(12)
puts "123"
puts next_bigger(123)
puts "1234"
puts next_bigger(1234)
puts "144"
puts next_bigger(144)
puts "111"
puts next_bigger(111)

