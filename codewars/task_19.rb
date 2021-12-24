# In this kata we want to convert a string into an integer. The strings simply represent the numbers in words.

# Examples:

#     "one" => 1
#     "twenty" => 20
#     "two hundred forty-six" => 246
#     "seven hundred eighty-three thousand nine hundred and nineteen" => 783919

# Additional Notes:

#     The minimum number is "zero" (inclusively)
#     The maximum number, which must be supported is 1 million (inclusively)
#     The "and" in e.g. "one hundred and twenty-four" is optional, in some cases it's present and in others it's not
#     All tested numbers are valid, you don't need to validate them

def ab2_size(string)
  if string[0] == '2'
    return 'twentee' + one_size(string[1])
  end
end

def two_size(string)
  if string[0] == '1'
    return "ten" if string == '10'
    return "eleven" if string == '11'
    return "twelve" if string == '12'
    return "thirteen" if string == '13'
    return "forteen" if string == '14'
    return "fifteen" if string == '15'
    return "sixteen" if string == '16'
    return "seventeen" if string == '17'
    return "eighteen" if string == '18'
    return "nineteen" if string == '19'
    return "twentee" if string == '20'
  else
    return ab2_size(string)    
  end
end

def one_size(string)
  return "zerro" if string == '0'
  return "one" if string == '1'
  return "two" if string == '2'
  return "three" if string == '3'
  return "four" if string == '4'
  return "five" if string == '5'
  return "six" if string == '6'
  return "seven" if string == '7'
  return "eight" if string == '8'
  return "nine" if string == '9'
end

def parse_int(string)
  if string.size == 1
    return one_size(string)
  elsif string.size == 2
    return two_size(string)
  end
  return str
end

p parse_int('20')
