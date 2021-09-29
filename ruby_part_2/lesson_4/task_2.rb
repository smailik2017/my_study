# frozen_string_literal: true

KING = 'king'
QUEEN = 'queen'
BISHOP = 'bishop'
ROOK = 'rook'
KNIGHT = 'knight'
PAWN = 'pawn'

chess_figures_arr = [KING, QUEEN, BISHOP, ROOK, KNIGHT, PAWN]

class ChessFigure
  attr_reader :name

  def set_name(name)
    @name = name
  end

  def who_are_you
    return 'It is KING' if name == KING
    return 'It is QUEEN' if name == QUEEN
    return 'It is BISHOP' if name == BISHOP
    return 'It is ROOK' if name == ROOK
    return 'It is KNIGHT' if name == KNIGHT
    return 'It is PAWN' if name == PAWN

    'Such a figure does not exist'
  end
end

# Массив фигур
p 'Массив объектов'
chess_figures = []

chess_figures_arr.each do |cf|
  chess_figures << ChessFigure.new
  chess_figures.last.set_name(cf)
end

chess_figures.each do |cf|
  p cf.who_are_you
end

p 'Несколько разных объектов'
# Несколько объектов (cf ==== Chess Figure )
cf_1 = ChessFigure.new
cf_1.set_name(KING)

cf_2 = ChessFigure.new
cf_2.set_name(QUEEN)

cf_3 = ChessFigure.new
cf_3.set_name('шашка')

p cf_1.who_are_you
p cf_2.who_are_you
p cf_3.who_are_you
