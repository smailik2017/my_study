# frozen_string_literal: true

arr = %i[first second third]

hash = (arr.each_with_index.map { |x, i| [x, i + 1] }).to_h

p hash
