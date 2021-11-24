def solution(string)
  string.split('').map { |x| ('A'..'Z').include?(x) ? " #{x}" : x }.join.strip
end

p solution('CamelCasing')
p solution('identifier')
p solution('')


