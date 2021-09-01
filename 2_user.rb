class User
    def fio
        'User Userovich'
    end

    def profession
        'Programmer'
    end
end

user1 = User.new
puts "ФИО: #{user1.fio}"
puts "Профессия: #{user1.profession}"