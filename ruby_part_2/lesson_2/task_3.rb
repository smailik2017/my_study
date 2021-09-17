arr = %w[cat dog tiger]

p arr.select { |val| val.include? 't' }