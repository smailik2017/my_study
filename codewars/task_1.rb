# frozen_string_literal: true

def duplicate_encode(word)
  (word.upcase.split('').map { |x| x = word.upcase.count(x) > 1 ? ')' : '(' }).join
end

str = 'din'
p "#{str} => #{duplicate_encode(str)}"
str = 'recede'
p "#{str} => #{duplicate_encode(str)}"
str = 'Success'
p "#{str} => #{duplicate_encode(str)}"
str = '(( @'
p "#{str} => #{duplicate_encode(str)}"
