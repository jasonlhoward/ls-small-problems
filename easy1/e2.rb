# not allowed to use #odd? or #even? in your solution.

=begin
This solution relies on the fact that % is the modulus operator in Ruby, not 
a remainder operator as in some other languages. Remainder operators return 
negative results if the number on the left is negative, while modulus always 
returns a non-negative result if the number on the right is positive.
=end

def is_odd?(num)
  # return false if num.zero?
  # num *= -1 if num < 0
  !(num % 2).zero?
  # !(num.remainder(2).zero?)
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true