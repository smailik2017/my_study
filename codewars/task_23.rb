def top_3_words(text)
  res = text.squeeze("'").split('').map do |x|
    if ('.:,!?/').include?(x)
      x = ' '
    else
      x = x
    end
  end.join.split(' ')
  res1 = Hash.new(0)
  res.reduce(res1) { |res, w| res[w.downcase] += 1; res1 }

  res1 = res1.sort_by { |key, val| val }.reverse!

  res2 = []
  res1.each_with_index do |x, ind|
    res2 << x[0] if ind < 3 and x[0] != "'"
  end
  return res2
end

# str = "e. e e e DDD ddd DdD: ddd ddd aa aA Aa, bb. cc cC e e e"
# p top_3_words(str)
# str = "  //wont won't won't"
# p top_3_words(str)

# str = "'"
# p top_3_words(str)
# str = "  '''''' aa "
# p str.squeeze("'")
p top_3_words("  ''''''  test won't ")

# str = "  //wont won't won't"
# p str.split("'").join("'")