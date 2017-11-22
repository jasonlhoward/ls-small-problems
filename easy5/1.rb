# ASCII String Value

# Write a method that determines and returns the ASCII string value of a
# string that is passed in as an argument. The ASCII string value is the
# sum of the ASCII values of every character in the string. (You may use
# String#ord to determine the ASCII value of a character.)

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

def ascii_value(str)
  val = str.chars.map(&:ord).reduce(:+)
  !val ? 0 : val
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# p ascii_value('Four score')
# p ascii_value('Launch School')
# p ascii_value('a')
# p ascii_value('')

# Further Exploration

# There is an Integer method such that:

# char.ord.mystery == char
# where mystery is our mystery method. Can you determine what method name
# should be used in place of mystery? What happens if you try this with a
# longer string instead of a single character?

p 'abc'.concat(97)
