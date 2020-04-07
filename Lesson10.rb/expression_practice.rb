test_score = gets.chomp.to_i

if test_score > 90
    print "You got A! \n"
else
    print "You did not get an A! \n"
end 


puts "What is your favorite animal?"
fav_animal = gets.chomp.downcase

if fav_animal == "camel"
    puts "I also love camels"
else 
    puts "That's great animal, but I love camels the most."
end 

# the result from teminal 

Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby Lesson10.rb/expression_practice.rb 
98
You got A! 
What is your favorite animal?
elephant
That's great animal, but I love camels the most.
Yangs-iMac:Ada_Jump_Start_14 yangsu$ 