puts "数字を入力してください"
puts "----------------------"

# 標準出力
input = gets
# 標準入力の値を数値に変換
num = input.to_i

if num % 15 == 0
  puts "結果は..."
  puts "FIzzBuzz"
elsif num % 3 == 0
  puts "結果は..."
  puts "Fizz"
elsif num % 5 == 0
  puts "結果は..."
  puts "Buzz"
else
  puts "結果は..."
  puts num
end
