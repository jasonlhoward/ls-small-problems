# Triangle Sides

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides
# must be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol
# :equilateral, :isosceles, :scalene, or :invalid
# depending on whether the triangle is
# equilateral, isosceles, scalene, or invalid.

# Examples:

# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

def triangle(*sides)
  # could have used sides.includes?(0)
  return :invalid unless sides.none?(&:zero?)
  return :invalid if sides.max > sides.reduce(:+) - sides.max
  return :equilateral if sides.min == sides.max
  return :isosceles if sides.count { |x| x == sides.max } == 2
  :scalene
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) # == :invalid

# the solution uses a case statement
