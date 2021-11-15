# frozen_string_literal: true

# Пусть имеется хэш, в котором ключом выступает название книги, а значением —массив
# авторов:
# authors = {
# 'Design Patterns in Ruby' => ['Russ Olsen'],
# 'Eloquent Ruby' => ['Russ Olsen'],
# 'The Well-Grounded Rubyist' => ['David A. Black'],
# 'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
# 'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
# 'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
# 'Ruby Under a Microscope' => ['Pat Shaughnessy'],
# 'Ruby Performance Optimization' => ['Alexander Dymo'],
# 'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
# }
# Создайте из него новый хэш, в котором ключом будет выступать автор, а значением —
# количество книг, которое он написал. Отсортируйте авторов по количеству книг. В группе
# авторов, которые написали одинаковое количество книг, отсортируйте авторов по алфавиту.

authors = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}

h = Hash.new(0)

authors.each do |_k, v|
  if v.size == 1
    h[v[0]] += 1
  else
    v.each do |v1|
      h[v1] += 1
    end
  end
end

h1 = {}

h.values.uniq.sort.reverse.each do |v|
  h1.merge!(h.select { |_k1, v1| v1 == v }.sort_by { |k, _v| k }.to_h)
end

p h1
