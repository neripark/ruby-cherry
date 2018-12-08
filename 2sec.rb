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

puts('----------')
# ヒアドキュメント
article = <<~HOGE
  これは記事です。
    タイトルは未定。
HOGE
puts article

# <<TEXT 何もなし 式展開はされる。
# <<-TEXT 識別子をインデントしても動くようになる
# <<~TEXT インデントが無視されるようになる
#         「すべての行で共通のインデント」が無視される。
#         インデント数が1行目と2行目で３，４だった場合 → ０，１になる。
# <<'TEXT' 式展開がされなくなる。ダブルクォーテならされる。

# ヒアドキュメントは開始の識別子 <<FUGA が一つの式として評価される。

def echo_here str
  puts str
end

# !!!!
echo_here (<<FUGA)
これは
ヒア
ドキュメント。
FUGA

# and/or と、&& || は明確に違う。
# &&,|| は&&のほうが優先順位が高いが、and/orは優先順位が同じため注意。
puts('----------')

def return_bool
  return true
end

# return_bool && puts 'yes!!' # error
return_bool and puts 'yes yes' # not error
return_bool && puts('yes!!')

# 
t1 = true
t2 = true
f1 = false

puts (t1 || t2 && f1)
puts (t1 or t2 and f1)


# unless の実験
puts('----------')

def return_str_unless bool
  return 'Yes' unless bool
  'No'
end

puts return_str_unless false

# date
puts('----------')
require 'date'
p Date.today
puts Date.today
