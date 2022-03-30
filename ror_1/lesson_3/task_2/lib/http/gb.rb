class Gb
  def count
    uri = URI('https://gb.ru/courses')
    Faraday.get(uri).body.lines.count
  end
end
