# Multiply All Pairs

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains the
# product of every pair of numbers that can be formed between the elements
# of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(a1, a2)
  result_array = []
  a1.each do |v1|
    a2.each { |v2| result_array << v1 * v2 }
  end
  result_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
