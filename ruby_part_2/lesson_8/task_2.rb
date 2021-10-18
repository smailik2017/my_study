# frozen_string_literal: true

class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize(surname, name, patronymic, email)
    @surname = surname
    @name = name
    @patronymic = patronymic
    @email = email
  end

  def fio; "#{@surname} #{@name} #{@patronymic} #{@email}"; end
  def author?; @author || false; end
  def admin?; @admin || false; end
  def moderator?; @moderator || false; end

  def say
    if author?
      'Автор'
    elsif admin?
      'Администратор'
    elsif moderator?
      'Модератор'
    else
      'Пользователь'
    end
  end
  alias to_s say
end

class Author < User
  attr_reader :author

  def initialize(surname, name, patronymic, email)
    @author = true
    super
  end
end

class Admin < User
  attr_reader :admin

  def initialize(surname, name, patronymic, email)
    @admin = true
    super
  end
end

class Moderator < User
  attr_reader :moderator

  def initialize(surname, name, patronymic, email)
    @moderator = true
    super
  end
end

just_user = User.new('Иванов1', 'Иван1', 'Иванович1', 'ivan1@mail.ru')
author_user = Author.new('Иванов2', 'Иван2', 'Иванович2', 'ivan2@mail.ru')
admin_user = Admin.new('Иванов3', 'Иван3', 'Иванович3', 'ivan3@mail.ru')
moderator_user = Moderator.new('Иванов4', 'Иван4', 'Иванович4', 'ivan4@mail.ru')

p just_user.fio
p just_user.to_s

p author_user.fio
p author_user.to_s

p admin_user.fio
p admin_user.to_s

p moderator_user.fio
p moderator_user.to_s
