# Searching 101
#
# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst
# the first 5 numbers.
numbers = []
ndx = 0
while numbers.length < 6 do
  print "Enter number #{ ndx + 1 }: "
  numbers << gets.chomp.to_i
  ndx += 1
end

last_number = numbers.pop

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end
