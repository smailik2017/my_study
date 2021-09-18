require 'date'

def show_calendar(v_date_now)
  day_of_week = %w[пн вт ср чт пт сб вс]
  months = %w[Январь Февраль Март Апрель Май Июнь
              Июль Август Сентябрь Октябрь Ноябрь Декабрь]

  arr = v_date_now.strftime("%m %Y").split ' '
  v_last_day = Date.new(arr[1].to_i, arr[0].to_i, -1).day
  arr[0] = months[arr[0].to_i - 1]
  v_first_line = "#{arr[0]} #{arr[1]}"

  print "\t\t#{v_first_line}"
  puts

  row = col = 1
  if v_date_now.wday.to_i == 0
    v_day = -5
  else
    v_day = -(v_date_now.wday.to_i - 2)
  end

  while row <= 7
    v_day_prev = v_day
    print "#{day_of_week[row - 1]}\t"
    while v_day <= v_last_day && col <= 6
      if v_day > 0 
        print "#{v_day}\t"
      else
        print "\t"
      end
      col += 1
      v_day += 7
    end
    puts
    row += 1
    col = 0
    v_day = v_day_prev + 1
  end
  puts
end

show_calendar DateTime.now


# Вывести календарь на год 2021
=begin
mon = 1
while mon <= 12
  show_calendar DateTime.new(2021, mon, 1)
  mon += 1
  sleep 3
end
=end

