# Odd Lists
#
# Write a method that returns an Array that contains every other element
# of an Array that is passed in as an argument. The values in the returned
# list should be those values that are in the 1st, 3rd, 5th, and so on
# elements of the argument Array.
#
# Examples:

def oddities(arr)
  new_arr = []
  arr.each_with_index { |e, i| new_arr.push(e) if (i % 2).zero? }
  new_arr
end

def evensies(arr)
  new_arr = []
  arr.each_with_index { |e, i| new_arr.push(e) if i % 2 == 1 }
  new_arr
end

p oddities([2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])

p evensies([2, 3, 4, 5, 6])
p evensies(['abc', 'def'])
p evensies([123])
p evensies([])
