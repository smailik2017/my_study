
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0, 0, 0) # returns 000000
rgb(148, 0, 211) # returns 9400D3


