class User
    def fio
        'User Userovich'
    end

    def profession
        'Programmer'
    end
end

user1 = User.new

f = File.new 'user.txt', 'w+'
f.write "ФИО: #{user1.fio}\n"
f.write "Профессия: #{user1.profession}"