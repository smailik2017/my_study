# frozen_string_literal: true

require 'date'

class News
  include Comparable
  attr_accessor :name, :body, :date

  def initialize(name, body, date)
    @name = name
    @body = body
    @date = date
  end

  def <=>(other)
    date <=> other.date
  end
end

# Example 1
news_1 = News.new('news1', 'body1', Date.new(2021, 0o2, 0o1))
news_2 = News.new('news2', 'body2', Date.new(2021, 0o2, 10))

puts "News1 date = #{news_1.date}"
puts "News2 date = #{news_2.date}"

puts "News1 < News2: #{news_1 < news_2}"
puts "News1 > News2: #{news_1 > news_2}"
puts "News1 == News2: #{news_1 == news_2}"
puts '------------'

# Example 2
news_1 = News.new('news1', 'body1', Date.new(2021, 0o2, 10))
news_2 = News.new('news2', 'body2', Date.new(2021, 0o2, 2))

puts "News1 date = #{news_1.date}"
puts "News2 date = #{news_2.date}"

puts "News1 < News2: #{news_1 < news_2}"
puts "News1 > News2: #{news_1 > news_2}"
puts "News1 == News2: #{news_1 == news_2}"
puts '------------'

# Example 3
news_1 = News.new('news1', 'body1', Date.new(2021, 0o2, 10))
news_2 = News.new('news2', 'body2', Date.new(2021, 0o2, 10))

puts "News1 date = #{news_1.date}"
puts "News2 date = #{news_2.date}"

puts "News1 < News2: #{news_1 < news_2}"
puts "News1 > News2: #{news_1 > news_2}"
puts "News1 == News2: #{news_1 == news_2}"
