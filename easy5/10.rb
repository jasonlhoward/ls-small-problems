# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

def print_in_box(str)
  dashes = '+' + '-' * (str.length + 2) + '+'
  spaces = '|' + ' ' * (str.length + 2) + '|'

  puts dashes
  puts spaces
  puts '| ' + str + ' |'
  puts spaces
  puts dashes
end

print_in_box('To boldly go where no one has gone before.')
