class Hello
  def greetings
    t = Time.now
    six_h = Time.new(t.year, t.month, t.day, 6, 0, 0)
    twelve_h = Time.new(t.year, t.month, t.day, 12, 0, 0)
    eighteen_h = Time.new(t.year, t.month, t.day, 18, 0, 0)
    midnight_h = Time.new(t.year, t.month, t.day, 0, 0, 0)

    if t >= six_h && t < twelve_h
      'Доброе утро'
    elsif t >= twelve_h && t < eighteen_h
      'Добрый день'
    elsif t >= eighteen_h && t < midnight_h
      'Добрый вечер'
    else
      'Доброй ночи'
    end
  end
end