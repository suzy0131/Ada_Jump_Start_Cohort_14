my_array = []
my_array = Array.new
empty_array = Array.new(3)

default_array = Array.new(3, "def")
puts default_array

random = [7, "fourteen", 13.2, "horse", 1]

animals = ["bird", "horse", "cat", "monkey"]
animals << "dog"
puts animals 

veggies = ["carrot", "yam", "zucchini", "spinach"]
veggies_count = veggies.length

veggies_count.times do |i|
    puts "#{i+1}: #{veggies[i]}"
end