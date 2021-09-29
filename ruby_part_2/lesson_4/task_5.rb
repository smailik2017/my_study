# frozen_string_literal: true

require 'time'

T1 = Time.parse('06:00')
T2 = Time.parse('12:00')
T3 = Time.parse('18:00')
T4 = Time.parse('23:59')
T5 = Time.parse('00:00')

class Time
  def hello
    return 'Доброе утро' if between?(T1, T2)
    return 'Добрый день' if between?(T2, T3)
    return 'Добрый вечер' if between?(T3, T4)
    return 'Доброй ночи' if between?(T5, T1)
  end
end

t = Time.parse('16:00')
p t
p t.hello

t = Time.now
p t
p t.hello
