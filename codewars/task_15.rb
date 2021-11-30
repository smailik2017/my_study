input = "apples, pears # and bananas\ngrapes\nbananas !apples"

def solution(input, markers)
  arr = input.split("\n")
  markers.each do |mark|
    arr.map! { |str| str = "#{str.split(mark)[0].strip}\n" }
  end
  arr.join.strip
end

p solution(input, ["#", "!"])


