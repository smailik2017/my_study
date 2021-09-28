class WeekDays
  @@days = %w[monday tuesday wednesday thursday friday saturday sunday]
  
  def each
    @@days.each { |day| puts day }
  end
end

wd = WeekDays.new
wd.each

