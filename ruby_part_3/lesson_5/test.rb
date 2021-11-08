class Ticket
  attr_accessor :price
  
  include Comparable

  def <=>(other)
    price <=> other.price
  end

  @@tickets = []
  def initialize(price)
    @price = price
    if @@tickets.include?(self)
      self.freeze
    else
      @@tickets << self
    end
  end
  
  def self.show_tickets
    p @@tickets
  end

  def self.all
    ObjectSpace.each_object(self).to_a.each do |x|
      p x unless x.frozen?
    end
  end

  def self.clear
    ObjectSpace.each_object(self).to_a.each do |x|
      if x.frozen?
        x = x.dup
        ObjectSpace.define_finalizer(x, proc {|id| puts "Finalizer one on #{id}" })
      end
    end
  end
  
  def self.count
    all.count
  end

end

t1 = Ticket.new(100)
t2 = Ticket.new(500)
t3 = Ticket.new(100)
t4 = Ticket.new(200)


# Ticket::clear
Ticket::all


