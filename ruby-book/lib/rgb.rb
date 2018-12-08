def to_hex r, g, b
  rgb = [r,g,b]
  color_code = rgb.inject('#') do |result, str|
    result + to_hex_unit(str)
  end
end

def to_hex_unit int
  int.to_s(16).upcase.rjust(2, "0")
end

def to_ints hex
  hex.slice!('#')
  to_int_unit(hex)
end

def to_int_unit code
  ints = [code[0, 2], code[2, 2], code[4, 2]]
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

