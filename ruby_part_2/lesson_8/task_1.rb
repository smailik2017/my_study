# frozen_string_literal: true

# Корабль
class Ship
  attr_accessor :name
end

# Надводный корабль
class SurfaceShip < Ship
  attr_accessor :height_above_water
end

# Подводная лодка
class Submarine < Ship
  attr_accessor :immersion_depth
end

# Контейнеровоз (кран)
class ContainerShip < SurfaceShip
  attr_accessor :tap
end

# Нефтяной танкер (грузовой трюм)
class OilTanker < SurfaceShip
  attr_accessor :cargo_hold
end

# Ракетный крейсер (ракеты)
class MissileCruiser < SurfaceShip
  attr_accessor :rockets
end

# Сухогруз (грузовой трюм, кран)
class DryCargosShip < OilTanker
  attr_accessor :tap
end

# Атомная подводная лодка (ракеты, торпеды)
class NuclearSubmarine < MissileCruiser
  attr_accessor :torpedoes
end

# Военный транспорт (ракеты, грузовой трюм, кран)
class MilitaryTransport < DryCargosShip
  attr_accessor :rockets
end

ships_classes = [
  Ship,
  SurfaceShip,
  Submarine,
  ContainerShip,
  OilTanker,
  MissileCruiser,
  DryCargosShip,
  NuclearSubmarine,
  MilitaryTransport
]

ships = []
ships_classes.each do |ship_class|
  ships << ship_class.new
end

ships.each { |x| puts "Класс = #{x.class}, методы: #{x.methods - Object.methods}" }
