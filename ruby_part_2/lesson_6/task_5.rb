# frozen_string_literal: true

keys = %w[red orange yellow green gray indigo violet]
values = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

result = (keys.each_with_index.map { |x, i| [x.to_sym, values[i]] }).to_h

p result
