#step1 create a hash1: store all the tickets and foods and its price
item_price = Hash.new
item_price = {
    single_ticket: 35.00,
    combo_ticket: 112.00,
    cotton_candy: 1.25,
    curly_fries_small: 2.50,
    curly_fries_large: 4.00
}

#step2 create hash2: store all the parties's user_input
puts "Welcome to the Ada State Fair Expense Tracker"
puts "Please provide some information: "
#create hash2
# high-level using  hash within hash to store the data info eg: parties_info {party1 =>{tickets : 1, candy : 2, etc}, party2 => {...}} 
parties_info = Hash.new
# using times loop, because i start from index 0, so for each party number should be i + 1
3.times do |i|
#finish input question using gets.chomp
    party = Hash.new
    party_number = "##{i + 1}"
    puts " Please inout the following for Party #{party_number}"
    puts ""
    puts" How many ticket(s) you want to purchase? "
    party[:ticket_number] = gets.chomp.to_i
    puts""
    puts" How many servings of cotton candy you want to order? "
    party[:cotton_candy_number] = gets.chomp.to_i
    puts""
    puts" How many curly fries you want to order? Which size you want to choose? Small or Large? "
    puts""

    puts "How many small curly fries you want?"
    party[:curly_fries_small_number] = gets.chomp.to_i
    puts""
    puts "How many large curly fries you want?"
    party[:curly_fries_large_number] = gets.chomp.to_i
    parties_info[party_number] = party
end

puts parties_info

#step3: Summary create a format pattern and iterate hash to get relevant data
total_fair_earned = 0
total_concession = 0
most_money_spent = 0
parties_info.each_key do |key|
    party = parties_info[key]
    # using %4 to determine whether the tickets can qualify with combo prices
    total_tiket_price = (party[:ticket_number] % 4) * item_price[:single_ticket] + (party[:ticket_number] / 4) * item_price[:combo_ticket]
    total_cotton_candy_price = party[:cotton_candy_number] * item_price[:cotton_candy]
    total_small_curly_fries_price = party[:curly_fries_small_number] * item_price[:curly_fries_small]
    total_large_curly_fries_price = party[:curly_fries_large_number] * item_price[:curly_fries_large]
    total_price = total_tiket_price + total_cotton_candy_price + total_small_curly_fries_price + total_large_curly_fries_price
    food_price = total_cotton_candy_price + total_small_curly_fries_price + total_large_curly_fries_price
    total_fair_earned += total_price
    total_concession += food_price
    most_money_spent =[most_money_spent, total_price].max
    puts "Party #{key} spent a total of $ #{total_tiket_price.to_f} on tickets and $ #{food_price.to_f} for a total of $ #{total_price}"
end

puts "In this session the fair earned $ #{total_fair_earned}"
puts "The total spent on concessions is $ #{total_concession}"
puts "Party 3 spent the most money for a total of $ #{most_money_spent}"



