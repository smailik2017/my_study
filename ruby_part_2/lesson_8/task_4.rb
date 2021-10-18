# frozen_string_literal: true

class AnimalKingdom
  NAME = 'Царство: Животные'
  def show_inheritance
    (self.class.ancestors - [Object, Kernel, BasicObject]).each do |x|
      p x::NAME
    end
  end
end

class TypeChordates < AnimalKingdom
  NAME = 'Тип: Хордовые'
end

class ClassMammals < TypeChordates
  NAME = 'Класс: Млекопитающие'
end

class OrderPrimates < ClassMammals
  NAME = 'Отряд: Приматы'
end

class FamilyHominids < OrderPrimates
  NAME = 'Семейство: Гоминиды'
end

class GenderPeople < FamilyHominids
  NAME = 'Род: Люди'
end

class KindHomosapiens < GenderPeople
  NAME = 'Вид: Человек разумный'
end

homosapiens = KindHomosapiens.new
homosapiens.show_inheritance
p '---'
type_chordates = TypeChordates.new
type_chordates.show_inheritance
