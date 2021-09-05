# frozen_string_literal: true

p1 = {
  x: 3,
  y: 7
}

p2 = {
  x: -1,
  y: 5
}

p Math.sqrt(((p2[:x] - p1[:x])**2) + ((p2[:y] - p1[:y])**2))
