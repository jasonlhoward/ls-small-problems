# Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list(a1, a2)
  result_array = []
  a1.each_with_index { |_, index| result_array << a1[index] * a2[index] }
  result_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
