# Clean up the words

# Given a string that consists of some words and an assortment of
# non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces. If one or
# more non-alphabetic characters occur in a row, you should only have one
# space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# replace the unwanted characters globally
# replace 2 spaces with one space until no 2 spaces are left

# def cleanup(str)
#   str.gsub('')
# end

def cleanup(str)
  str.gsub(/(\W)/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")  == ' what s my line '
