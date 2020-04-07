# firstly initialize the candy in the machine
A = "A $0.65 Twix"
B = "B $0.50 Chips"
C = "C $0.75 Nutter Butter"
D = "D $0.65 Peanut Butter Cup"
E = "E $0.55 Juicy Fruit Gum" 

puts " Welcome to Ada Developers Academy's Computer Candy Machine!"
puts " How much money do ya got? $ "
money = gets.chomp.to_f

puts money.to_s + ", that's all?"
if money <= 0
    puts "You don't have enough money"
    print "Please Try Again, money should greater than $ 0 "
    money = gets.chomp.to_f
end

puts "Well, lemme tell ya what we got here."

puts A
puts B 
puts C    
puts D 
puts E

puts""

puts "So, What'll ya have?"
candy = gets.chomp.upcase

# use an array to iterate all the candy in the candy machine
# problem find: if I choose A, the program will continue to iterate other items and print "invalid choice". If I find match answer I need break.

candy_machine = [A,B,C,D,E]
choice_find = ""
candy_machine.each do |item|
    if candy == item.slice(0)
        puts item + " is your chioce!"
        choice_find = item
        break
    end
end

if choice_find == ""
    puts "invalid choice, please try again"
else
    candy_price = choice_find.slice(3, 4).to_f
    if money >= candy_price
        puts " Thanks for purchasing " << choice_find.slice(8..-1) <<  " through us."
        puts" "
        remain_money = money - candy_price
        puts " Pleade take your candy, and your " + remain_money.to_s
    else
        puts "You'r broke. Take your" + money.to_s + " and go elsewhere."
    end
end
    
   

      

   
    

