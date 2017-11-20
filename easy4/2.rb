# What Century is That?

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  case century % 10
  when 0
    'th'
  when 1
    'st'
  when 2
    'nd'
  else
    'rd'
  end
end

def century(year)
  century = (year / 100) + 1
  century -= 1 if (year % 10).zero?
  "#{century}#{century_suffix(century)}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
