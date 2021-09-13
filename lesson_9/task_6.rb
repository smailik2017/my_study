def convert(*params)
  r = []
  params.each do |k|
    r = r << k * 1000
  end

  return r
end

p convert(1, 2.4, 3, 4)