# Swap Case

# Write a method that takes a string as an argument and returns a new
# string in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version. All other characters
# should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(str)
  result_str = ''
  str.each_char do |char|
    if char.count('a-z') > 0
      result_str += char.upcase
    else
      result_str += char.downcase
    end
  end
  result_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
