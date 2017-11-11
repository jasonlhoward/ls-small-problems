# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits.

# given integer
# sum = 0
# convert to string
# chars to array
# each
# sum += v.to_i

def sum(num)
  # s = 0
  # int.to_s.chars.each { |v| s += v.to_i }
  # s
  num.to_s.chars.map(&:to_i).reduce(:+)

  # .map -> create a new array and perform an action on each element
  # .map(&:to_i) -> same as .map { |e| e.to_i }
  # .reduce -> reduce the array to a single value
  # .reduce(:+) -> in this case, add each element

  # 23.to_s        # => "23"
  #   .chars       # => ["2", "3"]
  #   .map(&:to_i) # => [2, 3]
  #   .reduce(:+)  # => 5
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
