# Write a method that takes one argument, a string, and returns the same
# string with the words in reverse order.

def reverse_sentence(str)
  # turn the string into an array
  arr = str.split(' ')

  # create a new array to store the reversed array
  new_arr = []

  # get the last element of that array
  # add that element to the first element to a new array
  # in a loop
  ndx = arr.length-1
  while ndx >= 0
    element = arr[ndx]
    new_arr.push(element)
    ndx -= 1
  end

  # join the array into a sentence
  new_arr.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
