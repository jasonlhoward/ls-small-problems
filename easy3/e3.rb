# Counting the Number of Characters
#
# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters.
# Spaces should not be counted as a character.

print 'Please write a word or multiple words: '
str = gets.chomp
puts "There are #{str.delete(' ').length} in \"#{str}\""
