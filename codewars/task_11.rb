def pig_it str
  word = ''
  i = 0
  n = str.size
  result = ''

  while i < n
    if ('A'..'Z').include? str[i].upcase
      word << str[i]
    else
      result << "#{word[1..word.length-1]}#{word[0]}ay"
      word = ''
      result << str[i]
      i += 1

      begin

        until ('A'..'Z').include? str[i].upcase
          result << str[i]
          i += 1
        end

      rescue
      end

      i -= 1
    end
    i += 1
  end

  result

end

str = "hello, world !"

p pig_it str


