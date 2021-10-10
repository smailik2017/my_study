# frozen_string_literal: true

##
# Дополним класс Integer методами перевода
##
class Integer
  def kilobytes
    self * 1024
  end

  def megabytes
    kilobytes * 1024
  end

  def gigabytes
    megabytes * 1024
  end

  def terabytes
    gigabytes * 1024
  end
end

int = 1

p "#{int} кilobytes = #{int.kilobytes} bytes"
p "#{int} megabytes = #{int.megabytes} bytes"
p "#{int} gigabytes = #{int.gigabytes} bytes"
p "#{int} terabytes = #{int.terabytes} bytes"
