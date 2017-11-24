# Counting Up

# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# Examples:

# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]

def sequence(int)
  return nil if int.zero?
  int > 0 ? (1..int).to_a : (int..0).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)
p sequence(0)
p sequence(-5)
