# 1 min - 60 seconds
# 1 hour - 60 minutes - 3600 seconds
# 1 day - 24 hours - 1440 minutes - 86400 seconds
# 1 year - 365 days - 8760 hours - 525600 minutes - 31536000 seconds

def format_duration(seconds)
  years = seconds / 31536000
  a1 = seconds - (years * 31536000)
  days = a1 / 86400
  a2 = a1 - (days * 86400)
  hours = a2 / 3600
  a3 = a2 - (hours * 3600)
  minutes = a3 / 60
  a4 = a3 - (minutes * 60)

  result = []
  result << "#{years} years, " if years > 0
  result << "#{days} days, " if days > 0
  result << "#{hours} hours, " if hours > 0
  result << "#{minutes} minutes, " if minutes > 0
  result << "#{a4} seconds, " if a4 > 0

  result.each_with_index do |val, indx|
    val.sub!(', ', ' and ') if indx > 0 and indx < result.size - 1
    val.sub!(', ', '') if indx == result.size - 1
  end

  p result.join
end

format_duration(86467)
format_duration(9875675)
format_duration(5677656575)