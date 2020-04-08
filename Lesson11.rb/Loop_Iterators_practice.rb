=begin
100.times do
    puts "hello!"
end

i = 0
while i < 500
    puts "hello"
    i += 1
end

(5..9).each do |num|
    puts num
end 

again = "yes"
while again == "yes"
    puts "Let's play a game!"
    puts "..."
    puts "Would you like to play again? (yes/no)"
    again = gets.chomp
end 


number = 0
until number == 6
    puts"Guess my number (1-10) >"
    number = gets.chomp.to_i
end

puts "You guessed it!"

list = ['Ada', 'Grace', 'Charles']
list.each do |person|
    puts person
end
=end

i = 0
while i < 4 do
    mutiple = i * 10
    puts "#{i} times 10 is #{mutiple}"
    i += 1
end

[1,2,3,4].each do |number|
    puts number * 100 
end

[1,2,3,4].each { |number|
    puts number * 100
}