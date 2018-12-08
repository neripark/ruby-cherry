# 配列に要素を追加するとき、現在の個数より大きいインデックス番号を指定すると間はnilで埋められる。（エラーにならない）
fruits = ['apple','orange','grape']
fruits[10] = 'zakuro'
p fruits     #改行されて出力
# puts fruits  #改行されないで出力
#=> ["apple", "orange", "grape", nil, nil, nil, nil, nil, nil, nil, "zakuro"]

# 多重代入
puts '-------------'
a,b,c = [10, 20, 30]
puts a
puts b
puts c

# 多重代入 divmod
shou,amari = 100.divmod(3)
puts "商#{shou}, あまり#{amari}"

# 繰り返し
# ブロックは「処理の中身を引数として渡す」イメージ。
puts '-------------'
numbers = 1..10
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

# いろいろな処理
## map 各要素に対して処理をする
puts '-------------'
numbers = 1..6
numbers_add = numbers.map do |n|
  n += 1
end
puts numbers_add

## select trueを返すものだけに絞る
puts '-------------'
numbers = 1..6
numbers_odd = numbers.select do |n|
  n.odd?
end
puts numbers_odd

## inject 引数を一つ与えて、初回はそれを使う
puts '-------------'
day = ['mon','tue','wed','thu','fri','sat']
day_7 = day.inject('SUN') do |result, str|
  "#{result} #{str}"
end
puts day_7

