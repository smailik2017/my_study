months = %w[январь февраль март апрель май 
            июнь июль август сентябрь октябрь ноябрь декабрь]

m_max = 0
m_min = 100
months.each do |month|
  m_max = month.size if month.size > m_max
  m_min = month.size if month.size < m_min
end

p months.select { |val| val.size == m_min || val.size == m_max }


