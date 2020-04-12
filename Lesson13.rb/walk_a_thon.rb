puts "Welcome to Crystal's Walk-A-Thon Tracker"
puts "Our goal is to raise the money!"
puts ""
puts "Enter the earning goal for this event: "
target_money = gets.chomp.to_i
puts "Enter the amount earned per lap (per person): "
amount_money = 2.50

hash = {}
5.times do |i|
    walker = "##{i + 1}"
    puts "Walker #{walker}"
    laps = gets.chomp.to_i
    hash[walker] = {lap:laps}
end

hash.length.times do |i|
    earned = hash["##{i + 1}"][:lap] * amount_money
    hash["##{i + 1}"][:Earned] = earned.to_f 
end
 
puts hash

max_value = 0
large_key = nil
sum = 0
hash.each_key do |key|
    cur_value = hash[key][:Earned]
    sum += cur_value
    if cur_value > max_value
        max_value = cur_value
        large_key = key
    end
end

puts"Highest Earning Walker: #{large_key}"
puts"Total amount earned: $ #{sum.to_f}"
puts "Goal Met?"
if sum >= target_money
    puts " Yes! :-)"
else
    puts " No :-("
end

#test case
=begin
Highest Earning Walker: #5
Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby Lesson13.rb/walk_a_thon.rb 
Welcome to Crystal's Walk-A-Thon Tracker
Our goal is to raise the money!

Enter the earning goal for this event: 
500
Enter the amount earned per lap (per person): 
Walker #1
11
Walker #2
22
Walker #3
33
Walker #4
44
Walker #5
55
{"#1"=>{:lap=>11, :Earned=>27.5}, "#2"=>{:lap=>22, :Earned=>55.0}, "#3"=>{:lap=>33, :Earned=>82.5}, "#4"=>{:lap=>44, :Earned=>110.0}, "#5"=>{:lap=>55, :Earned=>137.5}}
Highest Earning Walker: #5
Total amount earned: $ 412.5
Goal Met?
 No :-(
Yangs-iMac:Ada_Jump_Start_14 yangsu$ 
=end