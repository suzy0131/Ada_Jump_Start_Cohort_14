student_name = Array.new(5)
puts "Please type you name: "
student_name.length.times do |i|
    name = gets.chomp.upcase
    student_name[i] = name
end

hash = Hash.new

student_data = []
student_name.length.times do |i|
    student_data[i] = {name: student_name[i]}
end

student_data.length.times do |i|
   student_id = rand(111111..999999)
   student_data[i][:Id] = student_id.to_s
end

#email
student_data.length.times do |i|
    fullname = student_data[i][:name]
    initial = fullname.slice(0)
    lastname = fullname.slice(fullname.index(" ") + 1..-1)
    lastdigit = student_data[i][:Id].slice(-3..-1)
    domain = "@adadevelopersacademy.org"
    email = initial + lastname + lastdigit + domain
    student_data[i][:email] = email
end

puts student_data

#test case
=begin
Yangs-iMac:Ada_Jump_Start_14 yangsu$ ruby Lesson13.rb/student_account_generator.rb 
Please type you name: 
suzy su
maco shen
josh liang
cauldia wen
jason wang
{:name=>"SUZY SU", :Id=>"550820", :email=>"SSU820@adadevelopersacademy.org"}
{:name=>"MACO SHEN", :Id=>"655300", :email=>"MSHEN300@adadevelopersacademy.org"}
{:name=>"JOSH LIANG", :Id=>"661662", :email=>"JLIANG662@adadevelopersacademy.org"}
{:name=>"CAULDIA WEN", :Id=>"934070", :email=>"CWEN070@adadevelopersacademy.org"}
{:name=>"JASON WANG", :Id=>"972186", :email=>"JWANG186@adadevelopersacademy.org"}
Yangs-iMac:Ada_Jump_Start_14 yangsu$ 
=end