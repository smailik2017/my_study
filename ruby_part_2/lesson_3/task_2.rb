# frozen_string_literal: true

require 'date'

def weekends
  d_start = Date.new(2021, 0o1, 0o1)
  d_end = Date.new(2021, 12, 31)
  yield [*d_start..d_end].select { |x| x.cwday >= 6 }
end

weekends { |x| puts x }
