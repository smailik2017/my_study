# rainbow = %w[red orage yellow green]

# rainbow.each do |color|
#   puts color
# end

# loop { puts 'hello, world' }

# def my_loop
#   n = 0
#   yield n +=1
#   yield n +=1
#   yield n +=1
# end

# my_loop { |i| puts "#{i}" }

# def greeting(name)
#   yield 'Hello', name
# end

# greeting('Ruby') { |fst, snd| puts "#{fst} #{snd}" }

# def greeting(name)
#   if block_given?
#     yield 'Hello', 'Ruby', '!'
#   else
#     p 'hello'
#   end
# end

# greeting('world')
# # { |fst, snd, thd| puts "#{fst} #{snd}" }

# def greeting
#   name = block_given? ? yield : 'world'
#   "Hello, #{name}"
# end

# name = greeting do
#   print 'Enter name: '
#   gets.chomp
# end

# puts name

# p 5.tap { |x| x * x }

# p 5.yield_self { |x| x * x }

# hello = 'Hello, %s!'.yield_self do |tmpl|
#   print 'Enter some '
#   format(tmpl, gets.chomp)
# end

# puts hello

# # p 'in'.yield_self { 'out' }

# def greeting(name, &block)
#   block.call(name)
# end

# def outer(name, &block)
#   greeting(name, &block)
# end

# def greeting(name)
#   yield name
# end

# def outer(name)
#   greeting(name) { |name| puts "Hello #{name}" }
# end

# outer('Ruby') { |name| puts "Hello #{name}" }


#{ |name| puts "Hello, #{name}" }



# loop { puts 'Hello, world!' }

# loop do
#   puts 'Hello world!'
# end

# result = [1, 2, 3, 4, 5].map do |x| 
#   x * x
# end

# p result


# print 'Enter name: '
# name = gets.chomp

# p name

p [1, 2, 3, 4, 5].map { |x| x * x }






























