# Combining Arrays

# Write a method that takes two Arrays as arguments, and returns an Array
# that contains all of the values from the argument Arrays. There should be
# no duplication of values in the returned Array, even if there are duplicates
# in the original Arrays.

# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# def merge(a1, a2)
#   (a1 + a2).each_with_object([]) { |el, arr| arr << el unless arr.index(el) }
# end

# def merge(a1, a2)
#   (a1 + a2).uniq
# end

def merge(a1, a2)
  a1 | a2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
