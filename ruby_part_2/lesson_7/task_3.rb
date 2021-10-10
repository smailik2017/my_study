#!/usr/share/rvm/rubies/ruby-3.0.2/bin/ruby
# frozen_string_literal: true

HOWTO = "Для работы программы используйте:
  task_3.rb [имя файла] [шаблон поиска]
Пример:
   task_3.rb words.txt 'ко'"

##
# Дополним класс Array методом find для поиска шаблона
##
class Array
  def find(val)
    result = grep(/^#{val}/)
    return 'Ничего не найдено!' if result.empty?

    result
  end
end

##
# Метод проверки параметров (файл должен существовать и
#                             параметр поиска должен быть не пустой)
##
def check_params(input_file_name, template)
  if !File.exist? input_file_name
    puts "Файл не существует !!! \n#{HOWTO}"
    false
  elsif template.nil? || template == ''
    puts "Шаблон поиска пустой !!! \n #{HOWTO}"
    false
  else
    true
  end
end

##
# Метод поиска, коорый выводит результат
##
def main(input_file_name, template)
  File.open(input_file_name).readlines(chomp: true).find(template) if check_params(input_file_name, template)
end

puts main ARGV[0], ARGV[1]
