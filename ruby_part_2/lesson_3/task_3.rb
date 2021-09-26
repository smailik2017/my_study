arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
p arr

pr = proc { |x| puts x }

def walk(arr, &block)
  arr.each do |el|
    case el
    when Array
      walk(el, &block)
    when Integer
      yield el
    end
  end 
end

walk(arr, &pr)
