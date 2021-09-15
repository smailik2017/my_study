class User
  def set_fio(fio)
    @fio = fio
  end

  def fio
    @fio
  end
end

student = User.new
teacher = User.new

student.set_fio('Петр Петрович Петров')
teacher.set_fio('Сидор Сидорович Сидоров')

puts student.fio
puts teacher.fio