# When will I Retire?

# Build a program that displays when the user will retire
# and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

require 'date'
year = DateTime.now.year

print 'What is your age? '
age = gets.chomp.to_i

print 'What age would you like to retire? '
age_retire = gets.chomp.to_i

years_til_retire = age_retire - age
retire_year = year + years_til_retire

puts "It's #{year}. You will retire in #{retire_year}."
puts "You have only #{years_til_retire} years of work to go!"
