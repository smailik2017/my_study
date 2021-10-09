# frozen_string_literal: true

a = ['Fst (1)', 'Snd (2)', 'Trd (3)']
b = %w[first second third]

hash = (b.each_with_index.map { |x, i| [x.to_sym, a[i]] }).to_h

p hash
