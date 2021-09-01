class Computer
    def inventory_no
        'ruby-ws-000001'
    end

    def vendor
        'Lenovo'
    end

    def model
        'ideapad 330'
    end

    def owner
        'User Userovich'
    end
end

computer1 = Computer.new

puts computer1.inventory_no
puts computer1.vendor
puts computer1.model
puts computer1.owner
