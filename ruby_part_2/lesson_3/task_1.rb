require 'date'

def week(wn)
  d_start = Date.new(2021,01,01)
  d_end = Date.new(2021,12,31)
  yield [*d_start..d_end].select { |x| x.cweek == wn } 
end

week(37) { |x| puts x }


