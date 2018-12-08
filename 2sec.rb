# 数値はアンダースコアで区切ることができる
int = 1_000_000
int2 = 1_030_000
int3 = int + int2
str1 = int2.to_s

puts(int3)
puts(int2.to_s)
puts(str1.class)
puts(int2.class)

puts('----------')

# 関数は最後に評価された式が戻り値になる（returnが不要）
def greet(str)
  if str == 'japan'
    'こんにちは'
  else
    'hoge' == 'hoge'
  end
end
puts greet('')

# 引数が不要な場合、普通はかっこはつけない
def greet2
  puts 'yeah.'
end
greet2
