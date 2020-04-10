puts "Let's play a number game. How many numbers would you like to enter?"
number = gets.chomp.to_i
array = Array.new(number)
array.length.times do |i|
    puts "Enter the #{i+1} positive integer: " 
    input = gets.chomp.to_i
    array[i] = input
end

puts "Comparing to the last value entered, #{array.last}, here are the observations: "
last = array.last.to_i
array.length.times do |i| 
        if array[i].to_i < last
            puts "The value at index #{i}, #{array[i]} is less than value at last index, #{last}"
        elsif array[i] == last
            puts "The value at index #{i}, #{array[i]} is equal value at last index, #{last}"
        else
            puts "The value at index #{i}, #{array[i]} is greater at last index, #{last}"
    end
end

puts" "

puts" The minimum value in the array is #{array.min()}"
puts" The maximun value in the array is #{array.max()}"
sum = 0
array.each do |number|
    sum += number
end
average = (sum / array.length).to_f
puts "The average of all the values in the array is #{average}"