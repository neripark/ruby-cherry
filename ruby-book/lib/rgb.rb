def to_hex r, g, b
  rgb = [r,g,b]
  color_code = rgb.inject('#') do |result, str|
    result + str.to_s(16).upcase.rjust(2, "0")
  end
end

def to_ints hx
  hx.slice!('#')
  ints = [hx[0, 2], hx[2, 2], hx[4, 2]]
  ints.map do |el|
    el.to_i(16)
  end
end

p to_hex(12, 3, 5)
p to_hex(255, 255, 255)
p to_hex(4, 60, 120)
p to_ints('#000000')
p to_ints('#ffffff')
p to_ints('#043c78')


