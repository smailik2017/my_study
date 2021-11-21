# frozen_string_literal: true

# Создайте класс Солнечной системы, который предоставляет методы, совпадающие с
# названиями планет. При вызове эти методы должны сообщать порядковый номер планеты,
# считая от Солнца. При попытке обратиться к несуществующей планете, класс должен
# выбрасывать исключение NotExistingPlanetException

PLANETS = {
  mercury: 1,
  venus: 2,
  earth: 3,
  mars: 4,
  jupiter: 5,
  saturn: 6,
  uranus: 7,
  neptune: 8,
  pluto: 9
}.freeze

##
# Класс ошибки "не существующая планета"
class NotExistingPlanetException < RuntimeError
end

##
# Класс солнечной системы
class SunSystem
  PLANETS.each do |method, num|
    define_singleton_method method do
      num
    end
  end

  def self.method_missing(m)
    raise NotExistingPlanetException, "Планета '#{m}' не существует!"
  end

end

p SunSystem.mercury
p SunSystem.earth
p SunSystem.planet
