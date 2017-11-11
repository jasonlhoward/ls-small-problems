# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting
# with 1. The length of the string should match the given integer.

def stringy(int)
  str = ''
  int.times { |i| str += ((i + 1) % 2).to_s }
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
