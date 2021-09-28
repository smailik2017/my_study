MELT = 'melt' 
FREEZ = 'freez'
BOIL = 'boil'
CONDENSE = 'condense'
SUBLIME = 'sublime'
DEPOSIT = 'deposit'
POSIBLE_STATES = %w[MELT FREEZ BOIL CONDENSE SUBLIME DEPOSIT]

class Substance
  def set_status(status)
    return @status = status if POSIBLE_STATES.include?(status.upcase)
    @status = nil
  end
  
  def show_status
    return @status
  end
end

a1 = Substance.new
a1.set_status(FREEZ)
p a1.show_status
a1.set_status(MELT)
p a1.show_status

a1.set_status('hello')
p a1.show_status

