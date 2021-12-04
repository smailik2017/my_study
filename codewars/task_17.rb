# frozen_string_literal: true

class My_game
  attr_accessor :board

  def initialize
    @board = Array.new(3, Array(3))
  end

  def generate_board
    (0..2).each do |i|
      @board[i] = [rand(3), rand(3), rand(3)]
    end
  end

  def show_board
    (0..2).each do |i|
      (0..2).each do |j|
        print "#{@board[i][j]}\t"
      end
      print "\n"
    end
  end

  def is_solved
    @board_t = @board.transpose
    str = []
    row = []
    (0..2).each do |i|
      str << @board[i].join
      row << @board_t[i].join
    end
    diag = []
    diag << "#{board[0][0]}#{board[1][1]}#{board[2][2]}"
    diag << "#{board[0][2]}#{board[1][1]}#{board[2][0]}"

    return 1 if str.include?('111') || row.include?('111') || diag.include?('111')

    return 2 if str.include?('222') || row.include?('222') || diag.include?('222')

    return -1 if @board.join.split('').map(&:to_i).include?(0) # game not over yet !

    0
  end
end

my_game = My_game.new
my_game.generate_board
my_game.show_board

p my_game.is_solved
