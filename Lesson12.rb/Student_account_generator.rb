#step1 creating 3 arrays
#step2 times loop asks the user to enter 5 student name(first and last name) all upper case
# step3 write a time loop to generate random student ID numbers from 111111 to 999999, put these value to student ID number array
# stpe4 write a times loop to generate student email addresses in the format: (first initial) + last name + last 3 digit of student ID @adadevelopersa
# step5 write code which will print out all the student names, id number, and emails.


#step1
student_name = Array.new(5)
student_id = Array.new(5)
student_email = Array.new(5)

#step2
puts "Please type you name: "
student_name.length.times do |i|
    name = gets.chomp.upcase
    student_name[i] = name
end

#step3 include 999999
student_id.length.times do |i|
    number = rand(111111..999999)
    student_id[i] = number.to_s
end

#step4
student_email.length.times do |i|
    first = student_name[i].slice(0)
    last = student_name[i].slice(student_name[i].index(" ") + 1..-1)
    lastDigit = student_id[i].slice(-3.. -1)
    notation = "@adadevelopersacademy.org"
    email = first+last+lastDigit+notation
    student_email[i] = email
end

# step5
student_email.length.times do |i|
    puts student_name[i] + " " + student_id[i] + " " + student_email[i]
end
