# Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Note that balanced pairs must each start with a (, not a ).

def balanced?(str)
  opening = 0
  closing = 0
  str.chars.each do |char|
    opening += 1 if char == '('
    closing += 1 if char == ')'
    return false if closing > opening
  end
  closing == opening
end

def quotes_balanced?(quotes)
  loop do
    return true if quotes.size.zero?
    return false if quotes.size == 1
    return false if quotes.shift != quotes.pop
  end
end

def balanced?(str)
  next_enclosure = []
  quotes = []
  parens = 0
  braces = 0
  brackets = 0
  str.chars.each do |char|
    # parentheses
    if char == '('
      parens += 1
      next_enclosure << ')'
    end
    if char == ')'
      parens -= 1
      break unless next_enclosure.pop == ')'
    end

    # brackets
    if char == '['
      brackets += 1
      next_enclosure << ']'
    end
    if char == ']'
      brackets -= 1
      break unless next_enclosure.pop == ']'
    end

    # braces
    if char == '{'
      braces += 1
      next_enclosure << '}'
    end
    if char == '}'
      braces -= 1
      break unless next_enclosure.pop == '}'
    end

    # quotes
    quotes << 'double' if char == '"'
    quotes << 'single' if char == "'"
  end
  (parens + brackets + braces).zero? && quotes_balanced?(quotes)
end

p balanced?("\'{([]{()}[])\"\'\'\"\'}") == true
# p balanced?('())(()') == false

# ' " ' ' " '

# p balanced?('What ()([{hello}]) this?')
# p balanced?('What is)] this?') == false
# p balanced?('What [(is this?') == false
# p balanced?('([(What)] [(is this)])?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# Solution

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end
# Discussion

# This is one problem that seems very difficult, but is actually quite easy to
# solve. A string is balanced if for each left parentheses we have a matching
# right parentheses.

# We can keep track of this by keeping a tally of the total parentheses count.
# Left parentheses are +1 and right parentheses are -1. If our string is
# balanced, then the total, parens will always be zero after parsing string.

# Notice how we have break if parens < 0. This is used to account for cases
# where a right parentheses occurs before a left parentheses, and that right
# parentheses doesn't have a matching left parentheses.

# Here is an example: balanced?(')Hey!('). If we should ever have a negative
# value for parens, then we know that our left and right parentheses are
# reversed, and that this isn't a balanced string.

# Further Exploration

# There are a few other characters that should be matching as well. Square
# brackets and curly brackets normally come in pairs. Quotation marks(single
# and double) also typically come in pairs and should be balanced. Can you
# expand this method to take into account those characters?
