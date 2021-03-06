def to_hex r, g, b
  rgb = [r,g,b]
  color_code = rgb.inject('#') do |result, str|
    result + str.to_s(16).upcase.rjust(2, "0")
  end
end

#def to_ints hx
#  ints = [hx[1, 2], hx[3, 2], hx[5, 2]]
#  ints.map do |el|
#    el.to_i(16)
#  end
#end

# リファクタ 正規表現で任意の２桁の文字列を取り出して配列にしている
# hex はrubyの標準メソッド
def to_ints hx
  #ints = hx.scan(/\w\w/).map{|el| el.to_i(16)}
  ints = hx.scan(/\w\w/).map(&:hex)
end

p to_hex(12, 3, 5)
p to_hex(255, 255, 255)
p to_hex(4, 60, 120)
p to_ints('#000000')
p to_ints('#ffffff')
p to_ints('#043c78')


