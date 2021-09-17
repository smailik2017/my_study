week_days = %w[понедельник вторник среда четверг пятница суббота воскресенье]
p week_days.select { |val| val.start_with? 'с' }
