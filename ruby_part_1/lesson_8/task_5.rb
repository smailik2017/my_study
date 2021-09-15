def posneg (a)
  return 'Положительное' if a > 0
  return 'отрицательное' if a < 0
  'НОЛЬ'
end

abort 'передайте параметр !!!' if ARGV.size == 0

if ARGV[0] =~ /^(?:\+|\-)?(?:(?:\d+)|(?:\d+\.)|(?:\.\d+)|(?:\d+\.\d+)){1}(?:e(?:\+|\-)?\d+)?$/i
  p posneg(ARGV[0].to_i)
elsif
  p 'Передано не число'
end


