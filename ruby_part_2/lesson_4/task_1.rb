# frozen_string_literal: true

class Building
  def set_name(name)
    @name = name
  end

  attr_reader :name

  def ready
    @status = true
  end

  def not_ready
    @status = false
  end

  def is_ready?
    return "#{name} is ready " if @status

    "#{name} is NOT ready"
  end
end

b1 = Building.new
b1.set_name('Здание 1')
p b1.is_ready?
b1.ready # Построили здание
p b1.is_ready?

b2 = Building.new
b2.set_name('Здание 2')
p b2.is_ready?

tas
