class Network
    def subnet
        '10.10.10.0/24'
    end

    def name
        'Area 0'
    end
end

network1 = Network.new

puts network1.subnet
puts network1.name
