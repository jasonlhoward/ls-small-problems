# Reversed Arrays (Part 2)

# Write a method that takes an Array, and returns a new Array with the
# elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the
# method you wrote in the previous exercise.

# Examples:

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 2, 3]                     # => true
# new_list == [3, 2, 1]                 # => true

# def reverse(list)
#   out = list.map{ |el| el }
#   return out if out.size.zero?
#   i = 0
#   loop do
#     out[i], out[-1 * (i + 1)] = out[-1 * (i + 1)], out[i]
#     i += 1
#     break if i >= out.length / 2
#   end
#   out
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 2, 3]                      # => [1, 2, 3]
# p new_list = reverse(list)              # => [3, 2, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 2, 3]                     # => true
# p new_list == [3, 2, 1]                 # => true

# Solution

# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end
# Discussion

# Well, nobody said reverse_each wasn't allowed! We could have solved this in
# a manner similar to the previous exercise, but where would the fun be in
# that? reverse_each is just like each, except it processes the elements in
# reverse order. Note that unlike each, reverse_each only applies to Arrays.

# Note in particular that our tests include
# list.object_id != new_list.object_id.
# This is used to verify that the returned array is a brand new array,
# and not a modified form of the original way. Likewise, the second test
# of list == [1, 2, 3] confirms that the original array has not been changed.

# Further Exploration

# An even shorter solution is possible by using either inject or
# each_with_object. Just for fun, read about these methods in the
# Enumerable module documentation, and try using one in your reverse method.

def reverse(array)
  array.each_with_object([]) { |el, arr| arr.unshift(el) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
