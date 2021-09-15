require 'date'

date_now = DateTime.now.to_date
#v_date = DateTime.new(2021, 9, 6).to_date

day_of_week = date_now.wday
date_week_begins_at = date_now - day_of_week + 1
date_week_ending_at = date_now + 7 - day_of_week

puts date_week_begins_at.strftime("%d.%m.%Y") + '-' + date_week_ending_at.strftime("%d.%m.%Y")

