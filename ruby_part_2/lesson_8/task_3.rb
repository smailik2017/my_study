# frozen_string_literal: true

class Person
  attr_accessor :surname, :name, :patronymic, :email

  def initialize(surname, name, patronymic, email)
    @surname = surname
    @name = name
    @patronymic = patronymic
    @email = email
  end

  def fio
    "#{@surname} #{@name} #{@patronymic}"
  end

  def admin?
    @admin || false
  end

  def moderator?
    @moderator || false
  end

  def say
    if admin?
      'Администратор'
    elsif moderator?
      'Модератор'
    else
      'Пользователь'
    end
  end
  alias to_s say
end

class User < Person
end

class Admin < Person
  attr_reader :admin

  def initialize(surname, name, patronymic, email)
    @admin = true
    super
  end
end

class Moderator < Person
  attr_reader :moderator

  def initialize(surname, name, patronymic, email)
    @moderator = true
    super
  end
end

user = User.new('Иванов1', 'Иван1', 'Иванович1', 'ivan1@mail.ru')
user.name = 'TEST'
p user.fio

admin_user = Admin.new('Иванов2', 'Иван2', 'Иванович2', 'ivan2@mail.ru')
p admin_user.fio

moderator_user = Moderator.new('Иванов3', 'Иван3', 'Иванович3', 'ivan3@mail.ru')
p moderator_user.fio

class Person
  undef_method :initialize
end

person = Person.new('Иванов3', 'Иван3', 'Иванович3', 'ivan3@mail.ru')
