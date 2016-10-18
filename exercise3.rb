puts "what is your name, buddy?" #prompt
name = gets.chomp

puts "Hi #{name}!" #response

puts "How old are you?" #2nd prompt

age = gets.chomp
new_age = age.to_i
year = (2016 - new_age)
#turning "new_age" into integer
#calculating current year - new_age

puts "Wow, you were born in #{year}, you're so old, buddy!" #2nd response
