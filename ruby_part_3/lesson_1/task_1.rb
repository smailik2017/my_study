# frozen_string_literal: true

filename = ARGV[0]

arr = File.readlines(filename)
puts arr[rand(arr.size)]

