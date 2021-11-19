# frozen_string_literal: true

# Независимо от того, как создано изображение формата JPEG, оно содержит в себе дату
# создания. Создайте скрипт, который автоматически извлекал бы эту дату из содержимого
# JPEG-файла.

require 'exifr/jpeg'

def get_date_jpeg(file_name)
  date_created = EXIFR::JPEG.new(file_name).date_time
  if date_created.nil?
    date_created = File.ctime(file_name)
    puts 'JPEG does not have EXIF data, so we can read creation date of the file in you OS only'
  end
  puts "Date created: #{date_created}"
end

get_date_jpeg('3.jpg')
