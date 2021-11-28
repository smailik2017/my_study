# frozen_string_literal: true

class Field
  attr_accessor :left_border, :right_border, :up_border, :down_border
  attr_reader :size

  def initialize(size)
    @size = size
    @left_border = 0
    @up_border = 0
    @right_border = size - 1
    @down_border = size - 1
  end
end

class Snake
  attr_accessor :row, :col, :changed
  attr_reader :trace

  def initialize
    @row = 0
    @col = 0
    @trace = [] << [@row, @col]
  end

  def snake_moved
    @changed = true
    @trace << [@row, @col]
  end

  def left
    @col -= 1
    snake_moved
  end

  def right
    @col += 1
    snake_moved
  end

  def up
    @row -= 1
    snake_moved
  end

  def down
    @row += 1
    snake_moved
  end
end

def lets_go(size)
  my_snake = Snake.new
  my_field = Field.new(size)

  loop do
    # goto right
    my_snake.changed = false
    my_snake.right while my_snake.col < my_field.right_border
    my_field.up_border += 1
    return my_snake.trace unless my_snake.changed

    # goto down
    my_snake.changed = false
    my_snake.down while my_snake.row < my_field.down_border
    my_field.right_border -= 1
    return my_snake.trace unless my_snake.changed

    # goto left
    my_snake.changed = false
    my_snake.left while my_snake.col > my_field.left_border
    my_field.down_border -= 1
    return my_snake.trace unless my_snake.changed

    # goto up
    my_snake.changed = false
    my_snake.up while my_snake.row > my_field.up_border
    my_field.left_border += 1
    return my_snake.trace unless my_snake.changed
  end
end

p lets_go(7)
