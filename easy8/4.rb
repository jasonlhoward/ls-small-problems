# All Substrings

# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings at a
# given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

def substrings(str)
  result_array = []
  0.upto(str.size - 1) do |x|
    1.upto(str.size - x) do |y|
      result_array << str[x, y]
    end
  end
  result_array
end

p substrings('abcde')
