# Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays
# that contain the first half and second half of the original Array,
# respectively. If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# def halvsies(array)
#   a1 = []
#   a2 = []
#   a1_max_length = array.size.even? ? array.length / 2 : array.length / 2 + 1
#   array.each do |el|
#     a1.length < a1_max_length ? a1 << el : a2 << el
#   end
#   [] << a1 << a2
# end

# def halvsies(array)
#   max = array.size.even? ? array.length / 2 : array.length / 2 + 1
#   [] << array[0, max] << array[max, array.length - max]
# end

def halvsies(array)
  half1 = array.slice(0, (array.size / 2.0).ceil)
  half2 = array.slice(half1.size, array.size - half1.size)
  [half1, half2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
