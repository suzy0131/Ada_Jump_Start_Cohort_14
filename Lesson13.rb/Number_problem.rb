# step1: create first hash 
array = Array.new(5)
array.length.times do |i|
    array[i] = rand(12..21)
end

puts "random generate"
hash1 = Hash.new
hash1 = {
    random_numbers: array
}


array1 = Array.new(5)
puts "number 12 ..21"
array1.length.times do |i|
    array1[i] = gets.chomp.to_i
end
puts "userinput"
hash1[:user_input] = array1
puts "hash1"
puts" "
puts hash1

#second hash
#reverse hash1 value as key
hash2 = Hash.new

array.length.times do |i|
    if hash2.key?(array[i])
        hash2[array[i]][:random] += 1
    else
        hash2[array[i]] = {random:1}
    end
end
puts "hash2"
puts ""
puts hash2

array1.length.times do |i|
    if hash2.key?(array1[i])
        if hash2[array1[i]].key?(:user)
            hash2[array1[i]][:user] += 1
        else
            hash2[array1[i]][:user] = 1
        end
    else
        hash2[array1[i]] = {user:1}
    end
end

puts hash2


for i in 1..3
    puts "Give me a number you want information about: "
    number = gets.chomp.to_i
    # Use Hash 1
    puts "Using only the first hash:"
    random_count = 0
    user_count = 0
    hash1[:random_numbers].length.times do |i|
        if hash1[:random_numbers][i] == number
            random_count += 1
        end
    end

    hash1[:user_input].length.times do |i|
        if hash1[:user_input][i] == number
            user_count += 1
        end
    end

    if random_count == 0
        puts "The number, %d did not show in the randomly generated numbers." % number
    else
        puts "The number, %d shows up %d time(s) in the randomly generated numbers." % [number, random_count]
    end

    if user_count == 0
        puts "The number, %d was not provided by the user earlier." % number
    else
        puts "The number, %d was provided %d time(s) by the user earlier." % [number, user_count]
    end
    
    # USe Hash 2
    puts "Using only the second hash:"

    if hash2.key?(number)
        if hash2[number].key?(:random)
            puts "The number, %d shows up %d time(s) in the randomly generated numbers." % [number, hash2[number][:random]]
        else
            puts "The number, %d did not show in the randomly generated numbers." % number
        end
        if hash2[number].key?(:user)
            puts "The number, %d was provided %d time(s) by the user earlier." % [number, hash2[number][:user]]
        else
            puts "The number, %d was not provided by the user earlier." % number
        end
    else
        puts "The number, %d did not show in the randomly generated numbers." % number
        puts "The number, %d was not provided by the user earlier." % number
    end
end
