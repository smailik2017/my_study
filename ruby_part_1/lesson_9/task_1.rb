def sum(*params)
  s = 0
  params.each do |v_p|
    s += v_p
  end
  s
end

p sum(1,2, 3, 4)