# Sequence Count

# Create a method that takes two integers as arguments. The first argument is
# a count, and the second is the first number of a sequence that your method
# will create. The method should return an Array that contains the same number
# of elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value.
# If the count is 0, an empty list should be returned.

# Examples:

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []

def sequence(count, skip)
  result = []
  return result if count.zero?
  count.times do |x|
    result << skip * (x + 1)
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

# Solution

# def sequence(count, first)
#   (1..count).map { |idx| idx * first }
# end
# Discussion

# This solution has two parts. First create a Range from 1 to the count.
# This gives us our basis. Then we use Enumerable#map to apply our block to
# each item in the range. Within the block we simply multiply the index by the
# sequential multiplier which gives us our value for each position in the array.
