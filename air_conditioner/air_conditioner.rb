input_lines = []
puts "室内温度を入力してください"
input_lines << gets.to_i
puts "設定温度を入力してください"
input_lines << gets.to_i
room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5
  require_time = 15
elsif temperature_diff > 4 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff > 10 then
  require_time = 60
end
puts "--------------------------------------"
puts "室内温度が設定温度になるまでの時間は「#{require_time}分」です。"
puts "======================================"
