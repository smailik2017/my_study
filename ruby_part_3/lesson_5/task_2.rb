# frozen_string_literal: true

def check_str(str)
  return true if str.count('a-zA-zа-яА-Я') == str.length

  false
end

def read_string
  flag = false
  until flag
    print 'Enter string: '
    str = gets.chomp
    flag = check_str(str)
    if flag
      puts 'Ok'
    else
      puts '!!!!   String must contain ounly alphabetical characters (english or russian)   !!!!'
      puts 'Enter again please.'
    end
  end
  str
end

def put_stat(arr)
  arr.uniq.sort.each_with_index do |x, i|
    n = arr.count(x)
    puts "#{i + 1}. #{x}" if n == 1
    puts "#{i + 1}. #{x} (#{n})" if n > 1
  end
end

arr = []
5.times do
  arr << read_string
end
puts '---'
puts 'You entered:'
arr.each_with_index do |x, i|
  puts "#{i + 1}. #{x}"
end
puts '---'
puts 'Sorting and uniq values with statistics:'
put_stat(arr)
