# step1: First play a few on eduplace to familiar with the game

# step2: declare different value as the input from the user
# step3: Use up ten different parts of speech in order to fill in MadLib



# Open user statement
puts "Hello everyone welcome to the MadLib Game! Let's try what happend after you filled in the blank: "

#single noun
print "May I know your name: "
name = gets.chomp

#number
print "your lucky number: "
number = gets.chomp

#color
print "your favorite color: "
color = gets.chomp.capitalize

#number to float
print "your height: "
height = gets.chomp.to_f

#abj object
print "object: "
adjObject = gets.chomp

#verb-ing
print "verb ending with -ing: "
verbIng = gets.chomp

#verb-ed
print "verb ending with -ed: "
verbEd = gets.chomp

#noun animal
print "animal: "
animal = gets.chomp.downcase

# madlib indented"

puts  " It is my briefly introduction. My name is " << name << " . My lucky number is " << number << ". My favorite color is " << color << ".
        My height is"  << height.to_s << ". and I believed that I am grow fast. Now I feel "  << verbEd <<  " because the weather is " << verbIng << ".
       I have one " << animal << " and he is my best friend. Thank you taking your time! "
# Terminal run output:

       Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby MadLibAssignment.rb 
       Hello everyone welcome to the MadLib Game! Let's try what happend after you filled in the blank: 
       May I know your name: Suzy
       your lucky number: 31
       your favorite color: pinkl
       your height: "5.4" 
       object: good
       verb ending with -ing: loving
       verb ending with -ed: excited
       animal: dog
       Traceback (most recent call last):
       MadLibAssignment.rb:46:in `<main>': no implicit conversion of Float into String (TypeError)
       Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby MadLibAssignment.rb 
       Hello everyone welcome to the MadLib Game! Let's try what happend after you filled in the blank: 
       May I know your name: Suzy
       your lucky number: 31
       your favorite color: pink
       your height: 5.04
       object: lucky
       verb ending with -ing: loving
       verb ending with -ed: excited
       animal: dog
       
               It is my briefly introduction. My name is Suzy . My lucky number is 31. My favorite color is Pink.
               My height is5.04. and I believed that I am grow fast. Now I feel excited because the weather is loving.
               I have one dog and he is my best friend. Thank you taking your time! 