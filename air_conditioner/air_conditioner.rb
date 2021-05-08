input_lines = []
puts "室内温度を入力してください"
input_lines << gets.to_i
puts "設定温度を入力してください"
input_lines << gets.to_i
puts "風量を入力してください"
input_lines << gets.to_i

room = input_lines[0]
air_conditioner = input_lines[1]
air_flow = input_lines[2]

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5
  require_time = 15
elsif temperature_diff > 4 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff > 10 then
  require_time = 60
end

if air_flow == 1
  require_time
elsif air_flow == 2
  require_time -= 5
elsif air_flow == 3
  require_time -= 10
else
  puts "風量の値を1〜3で入力してください"
  exit
end

puts "--------------------------------------"
puts "室内温度が設定温度になるまでの時間は「#{require_time}分」です。"
puts "======================================"
