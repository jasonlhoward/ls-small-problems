# Longest Sentence

# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end
# with periods (.), exclamation points (!), or question marks (?). Any sequence
# of characters that are not spaces or sentence-ending characters should be
# treated as a word. You should also print the number of words in the longest
# sentence.

# txt = 'jlkjhkjhlkjh. lljlkjlklkj! jlkj;lkj;lkj?'
# p txt.split(/!|\.|\?/)

# longest = 0
# File.open('example.txt').each do |sentences|
#   sentences.split(/!|\.|\?/).each do |sentence|
#     longest = sentence.split.size if sentence.split.size > longest
#   end
# end
# p longest

s = File
  .read('84.txt')
  .split(/!|\.|\?/)
  .max_by(&:size)
  .tr("\n", ' ')
  .strip
# p newline_free
p s.split.size
puts s
