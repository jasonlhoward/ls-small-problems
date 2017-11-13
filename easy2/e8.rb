# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of
# all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

print "Enter a positive integer: "
int = gets.chomp.to_i

print "Compute (s)um or compute (p)roduct? "
func = gets.chomp

func = func == 'p' ? 'product' : 'sum'

# using reduce
# result = func == 'product' ? (1..int).reduce(:*) : (1..int).reduce(:+)

# using inject
if func == 'product'
  result = (1..int).inject { |product, n| product * n }
else
  result = (1..int).inject { |sum, n| sum + n }
end

puts "The #{func} of the integers between 1 and #{int} is #{result}."
