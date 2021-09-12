def check(a)
  puts "передана строка #{a}"
  if a =~ /^[0-9]*$/
    return 'Число'
  elsif a =~ /^(?:\+|\-)?(?:(?:\d+)|(?:\d+\.)|(?:\.\d+)|(?:\d+\.\d+)){1}(?:e(?:\+|\-)?\d+)?$/i
    return 'Вещественное'
  end
  'Просто строка'
end

abort 'Введите параметр !!!' if ARGV.size != 1

p check(ARGV[0])
