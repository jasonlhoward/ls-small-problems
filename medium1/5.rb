# Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def diamond(size)
  stars = 1
  1.upto(size) do |x|
    spaces = (size - stars) / 2
    if stars > 2
      inner_spaces = stars - 2
      puts "#{' ' * spaces}*#{' ' * inner_spaces}*#{' ' * spaces}"
    else
      puts "#{' ' * spaces}#{'*' * stars}#{' ' * spaces}"
    end
    x / size.to_f >= 0.5 ? stars -= 2 : stars += 2
  end
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
diamond(79)
