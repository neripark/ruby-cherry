# 数値はアンダースコアで区切ることができる
int = 1_000_000
int2 = 1_030_000
int3 = int + int2
str1 = int2.to_s

puts(int3)
puts(int2.to_s)
puts(str1.class)
puts(int2.class)

