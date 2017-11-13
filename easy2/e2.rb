# How big is the room?

# Build a program that asks a user for the length and width of a room
# in meters and then displays the area of the room in both square meters
# and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

print 'Enter length (in meters): '
length = gets.chomp.to_f

print 'Enter width (in meters): '
width = gets.chomp.to_f

sq_meters = length * width
sq_ft = length * width * 10.7639
puts "The area of the room is #{format('%.2f', sq_meters)} square meters (#{format('%.2f', sq_ft)} square feet)"
