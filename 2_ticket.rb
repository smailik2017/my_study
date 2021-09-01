class Ticket
    def price
        3500
    end

    def date
        '10.08.2021'
    end

    def row
        4
    end

    def seat
        12
    end

    def event
        'Трудно быть рубистом'
    end
end

ticket = Ticket.new

puts "Дата фильма #{ticket.date}"
puts "Цена билета: #{ticket.price}"
puts "Ряд: #{ticket.row}"
puts "Место: #{ticket.seat}"
puts "Фильм: #{ticket.event}"
