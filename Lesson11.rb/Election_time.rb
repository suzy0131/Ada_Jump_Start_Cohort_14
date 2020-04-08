
# requirement: accepts input from the user and outputs the winner of the election

puts "Welcome to my election voting program!"
A = "A Donald Duck"
B = "B Minnie Mouse"
C = "C Goofy"
candidate = [A, B, C]

candidate.each do |candi|
    puts "Election candiates are:"
    puts candi
end

countA = 0;
countB = 0;
countC = 0;

i = 1
(1..10).each do |i| 
    puts "Now please start your #{i} time vote"
    vote = gets.chomp.upcase.to_s
    if vote == A.slice(0)
        countA = countA + 1
    elsif vote == B.slice(0)
        countB = countB + 1
    elsif vote == C.slice(0)
        countC = countC + 1
    else 
        puts " Invalid input, please try again"
        vote = gets.chomp.upcase
    end
end

#is there anyway I can both print a and counta?!~~~hashmap? or array? 
puts " Election Results..."
puts""
puts " Vote Summary:"
puts "#{A} has total vote #{countA}"
puts "#{B} has total vote #{countB}"
puts "#{C} has total vote #{countC}"

#find max value
max = [countA,countB,countC].max

puts" The Winner is:"
    if max == countA
        puts "#{A}"
    elsif max == countB
        puts "#{B}"
    else 
        puts "#{C}"
    end


=begin
test case 
Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby Lesson11.rb/Election_time.rb 
Welcome to my election voting program!
Election candiates are:
A Donald Duck
Election candiates are:
B Minnie Mouse
Election candiates are:
C Goofy
Now please start your 1 time vote
a
Now please start your 2 time vote
b
Now please start your 3 time vote
b
Now please start your 4 time vote
b
Now please start your 5 time vote
b
Now please start your 6 time vote
b
Now please start your 7 time vote
b
Now please start your 8 time vote
b
Now please start your 9 time vote
c
Now please start your 10 time vote
c
 Election Results...

 Vote Summary:
A Donald Duck has total vote 1
B Minnie Mouse has total vote 7
C Goofy has total vote 2
 The Winner is:
B Minnie Mouse
Yangs-iMac:Ada_Jump_Start_14 yangsu$ 
=end