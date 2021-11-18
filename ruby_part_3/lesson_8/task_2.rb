# frozen_string_literal: true

require 'ostruct'
require 'set'

##
# Класс игрового поля, квадрат XX на YY
class PlayingField
  attr_accessor :occupied_fields

  XX = 10
  YY = 10

  def initialize
    @occupied_fields = Set.new
  end

  def take_the_field
    field = OpenStruct.new(x: rand(XX), y: rand(YY))
    field = OpenStruct.new(x: rand(XX), y: rand(YY)) while occupied?(field)
    @occupied_fields << field
    field
  end

  private

  def occupied?(field)
    return true if @occupied_fields.include?(field)

    false
  end
end

playing_field = PlayingField.new

nuclear_submarine = OpenStruct.new(
  number_of_missiles: rand(10),
  number_of_torpedos: rand(10),
  field: playing_field.take_the_field
)

missile_cruiser = OpenStruct.new(
  number_of_missiles: rand(10),
  field: playing_field.take_the_field
)

military_transport_ship = OpenStruct.new(
  cargo_hold: 2,
  tap: 3,
  field: playing_field.take_the_field
)

puts nuclear_submarine
puts missile_cruiser
puts military_transport_ship
