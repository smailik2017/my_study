class Week
  def week_day(a)
    return nil if a < 1 || a > 7
    %w[понедельник вторник среда четверг пятница суббота воскресенье][a - 1]
  end
end

p Week.new.week_day 2

