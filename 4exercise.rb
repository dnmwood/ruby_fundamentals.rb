#accidentally worked on Control structure exercises under file "exercise4", so this will be the FizzBuzz exercise.

one_to_hundred = (1..100)
one_to_hundred.each do |num|

if num % 5 == 0 && num % 3 == 0
  puts "Bitmaker"

elsif num % 3 == 0
  puts "Bit"

elsif num % 5 == 0
  puts "Maker"

else puts num
end
end
