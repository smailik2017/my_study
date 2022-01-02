def int32_to_ip(int32)
  strIP = int32.to_s(2).rjust(32, '0')
  a = strIP[0..7].to_i(2)
  b = strIP[8..15].to_i(2)
  c = strIP[16..23].to_i(2)
  d = strIP[24..31].to_i(2)
  "#{a}.#{b}.#{c}.#{d}"
end

p int32_to_ip(2149583361)
p int32_to_ip(32)