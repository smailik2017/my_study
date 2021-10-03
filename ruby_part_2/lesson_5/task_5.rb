class List
  attr_accessor :params
  def initialize(*params)
    @params = *params
  end
  
  def each
    yield @params if block_given?
  end
end

list = List.new(1, 2, 'Hello')
list.each { |x| puts x }



