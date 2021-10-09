# frozen_string_literal: true

str = 'Возьмите текст этого задания и извлеките из него все слова, количество
символов в которых больше 5. Подсчитайте количество слов и выведите их
алфавитном порядке'

all_words = str.split(/[^[[:word:]]]+/)

puts 'Words more than 5 symbols:'
five_chars = all_words.select { |x| x.length > 5 }

puts "Колличество слов в которых больше 5 символов = #{five_chars.size}"
puts 'Отсортированный список слов 5+:'
p five_chars.sort.uniq
