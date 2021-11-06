# frozen_string_literal: true

class Group
  include Enumerable
  attr_accessor :users

  def initialize
    @users = {
      fst: User.new('name1'),
      snd: User.new('name2'),
      thd: User.new('name3')
    }
  end

  def each(&block)
    @users.each(&block)
  end

  class User
    attr_accessor :name

    def initialize(name)
      @name = name
    end
  end
end

grp = Group.new
grp.each { |x, y| puts "#{x}: #{y.name}" }
