# Rotation (Part 3)

# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

def rotate_array(arr)
  return [] if arr.size.zero?
  arr = arr.dup
  arr << arr.shift
end

def rotate_rightmost_digits(number, digits)
  array = number.to_s.chars
  array[-digits, digits] = rotate_array(array[-digits, digits])
  array.join.to_i
end

def max_rotation(number)
  digits = number.to_s.size
  digits.downto(2) do |x|
    number = rotate_rightmost_digits(number, x)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# p rotate_rightmost_digits(8_703_529_146, 10)
# p rotate_rightmost_digits(7035291468, 9)
# p rotate_rightmost_digits(7352914680, 8)
# p rotate_rightmost_digits(7329146805, 7)
# p rotate_rightmost_digits(7329146805, 6)
# p rotate_rightmost_digits(7329468051, 5)
# p rotate_rightmost_digits(7329480516, 4)
# p rotate_rightmost_digits(7329485160, 3)
# p rotate_rightmost_digits(7329485601, 2)
