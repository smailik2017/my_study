class Host
    def name
        'myhost.mydomain'
    end

    def ip_address
        '10.10.10.10'
    end

    def gateway
        '10.10.10.1'
    end
end

host1 = Host.new

puts host1.name
puts host1.ip_address
puts host1.gateway

