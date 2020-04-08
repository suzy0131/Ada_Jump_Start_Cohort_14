#using times loop

puts "Let's play a number game. How many numbers would you like to enter? You got 5 times chance"
number = gets.chomp.to_i
5.times do |i|
    puts "please entry your #{i} time(s) positive interger: #{number}"
    if number % 3 == 0
        puts "#{number} is divisible by 3"
        break
    else  
        puts "#{number} is not divisible by 3, please reentry the number >"
        number = gets.chomp.to_i
    end
end  


#using range
puts "Let's play a number game. How many numbers would you like to enter? You got 5 times chance"
number = gets.chomp.to_i
(1..5).each do |i|
    puts "please entry your #{i} time(s) positive interger: #{number}"
    if number % 3 == 0
        puts "#{number} is divisible by 3"
        break
    else  
        puts "#{number} is not divisible by 3, please reentry the number >"
        number = gets.chomp.to_i
    end
end 
=end 


#using while loop
puts "Let's play a number game. How many numbers would you like to enter?"
number = gets.chomp.to_i
while number % 3 != 0
    puts "#{number} is not divisible by 3, please re-entry the number >"
    number = gets.chomp.to_i
end
puts "#{number} is divisible by 3"
