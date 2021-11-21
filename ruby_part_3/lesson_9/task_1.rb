# frozen_string_literal: true

# Создайте класс пользователя User, объект которого может хранить фамилию, имя и отчество
# пользователя,а также его электронный адрес.
# Кроме того, создайте исключение UserException, которое выбрасывается при попытке ввести неверный электронный адрес или
# имя пользователя, содержащее символы, отличные от русского языка.

VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.freeze

class UserException < RuntimeError
end

class String
  def in_eanglish?
    return true if count('a-zA-Z') == size

    false
  end

  def correct_email?
    self =~ VALID_EMAIL_REGEX
  end
end

class User
  attr_accessor :first_name, :last_name, :patronymic, :email

  def initialize(first_name, last_name, patronymic, email)
    @first_name = first_name
    @last_name = last_name
    @patronymic = patronymic
    @email = email

    raise UserException, 'Имя должно состоять из букв английского алфавита' unless @first_name.in_eanglish?
    raise UserException, 'Фамилия должно состоять из букв английского алфавита' unless @last_name.in_eanglish?
    raise UserException, 'Отчество должно состоять из букв английского алфавита' unless @patronymic.in_eanglish?
    raise UserException, 'Не корректный eMail' unless @email.correct_email?
  end

  def first_name=(first_name)
    @first_name = first_name
    raise UserException, 'Имя должно состоять из букв английского алфавита' unless @first_name.in_eanglish?
  end

  def last_name=(last_name)
    @last_name = last_name
    raise UserException, 'Фамилия должно состоять из букв английского алфавита' unless @last_name.in_eanglish?
  end

  def patronymic=(patronymic)
    @patronymic = patronymic
    raise UserException, 'Отчество должно состоять из букв английского алфавита' unless @patronymic.in_eanglish?
  end

  def email=(email)
    @email = email
    raise UserException, 'Не корректный eMail' unless @email.correct_email?
  end
end

user = User.new('first', 'last', 'patronymic', 'mail-1@mail.ru')

user.first_name = 'Иванов'
