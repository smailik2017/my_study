class Ticket
  attr_accessor :seat, :row
  
  def initialize(seat, row)
    @seat = seat
    @row = row
  end

  def hash
    [row, seat].hash
  end
  
  def ==(other)
    seat == other.seat && row == other.row
  end
  
  def eql?(other)
    hash == other.hash
  end
end

t1 = Ticket.new(10, 15)
t2 = Ticket.new(10, 15)
t3 = Ticket.new(11, 12)

h = {t1 => 'ticket1', t2 => 'ticket2', t3 => 'ticket3'}
p h
p h[t3]
