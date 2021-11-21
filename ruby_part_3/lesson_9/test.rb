# class RandException < Exception
# end

# class Ticket
#   attr_accessor :price, :date
#   def initialize(price, date)
#     raise RandException.new("Random error ocured!!!!") if rand(2).zero?
#     @price = price
#     @date = date
#   end
# end

# begin

# 10.times do |i|
#   p Ticket.new(i, Time.new(2021, 11, 10, 22, 20))
# end

# rescue RandException => e
#   p e.message
#   p e.class
#   
# end

# begin
#   if rand(2).zero?
#     raise RuntimeError, 'Error RuntimeError class'
#   else
#     raise IOError, 'IOError !!!!'
#   end
# rescue RuntimeError, IOError => e
#   p e.message
# end
  
  
# tries = 0
# begin
#   tries += 1
#   puts "Попытка № #{tries}"
#   raise 'Error!'
# rescue 
#   retry if tries < 3
#   p 'Tries END!!'
# end

# def say
#   raise 'Error' if rand(2).zero?
# rescue
#   puts "if error ocured"
# else
#   puts "if there is no errror"
# ensure
#   puts "always"

# end
# say

arr = [2, 4, 0, 6].map do |x|
  10 / x
  rescue => e
    p e.message
    nil
end

p arr
























