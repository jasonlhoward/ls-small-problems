# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with all five or more letter words
# reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

def reverse_words(str)
  arr = str.split(' ')
  reversed_words = []

  arr.each do |word|
    if word.length > 4
      reversed = []
      letters = word.chars
      reversed.push(letters.pop) until letters.empty?
      word = reversed.join
    end
    reversed_words.push(word)
  end

  reversed_words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
