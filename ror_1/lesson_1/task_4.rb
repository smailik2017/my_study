require 'httparty'
require 'nokogiri'

parsed_data = Nokogiri::HTML.parse(HTTParty.get('https://gb.ru').body)
tags = parsed_data.css('.mn-header__phones-link')
puts "Support: #{tags[0].text}"
