# (*) Создайте консольную программу поиска словарю-файлу. Пусть имеется файл, в котором
# слова отсортированы в алфавитном порядке. Создайте программу, которая принимает в
# качестве аргумента слово и ищет вхождение в словаре. Если обнаружено дословное
# вхождение слова, оно выводится в качестве результата работы программы. Если дословного
# вхождения не обнаружено, ищется частичное вхождение слова от начала слова. Например,
# при поиске слова "код" выбираем слова "кодекс", "кодеин" и вообще все слова, начинающиеся
# с "код". Список таких слов выводим в качестве результата. Если совпадений не обнаружено,
# выводим сообщение об этом.


arr = %w[hello world maks]
str = 'hello'

p arr.include? str


p arr.select { |x| x.start_with? str }
