def even_odd (a)
  return 'четное' if a.to_s(2)[-1] == '0'
  'НЕ четное'
end

abort 'передайте параметр !!!' if ARGV.size == 0

if ARGV[0] =~ /^[0-9]*$/
  p even_odd(ARGV[0].to_i)
elsif
  p 'Передайте программе число (без точёки) !!!'
end


