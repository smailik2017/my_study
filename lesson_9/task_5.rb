def cel2far(cel)
  return cel.to_f * 9 / 5 + 32
end

def far2cel(far)
  return (far.to_f - 32) * 5 / 9
end

p cel2far(10)
p far2cel(10)
