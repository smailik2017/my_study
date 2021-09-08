def fact(n)
  return n * fact(n-1) if n > 1
  return 1
end

puts fact(ARGV[0].to_i)
