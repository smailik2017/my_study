v_date = Time.now
case v_date.month
when 1
    v_month = 'января'
when 2
    v_month = 'февраля'
when 3
    v_month = 'марта'
when 4
    v_month = 'апреля'
when 5
    v_month = 'мая'
when 6
    v_month = 'июня'
when 7
    v_month = 'июля'
when 8
    v_month = 'августа'
when 9
    v_month = 'сентября'
when 10
    v_month = 'октября'
when 11
    v_month = 'ноября'
when 12
    v_month = 'декабря'
end

puts "Сегодня #{v_date.day} #{v_month} #{v_date.year}"


