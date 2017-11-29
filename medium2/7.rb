# Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will
# remain in use for the foreseeable future.

# Examples:

# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

def friday_13th(year)
  count = 0
  1.upto(12) do |month|
    count += 1 if Time.new(year, month, 13).friday?
  end
  count
end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# Further Exploration

# An interesting variation on this problem is to count the number months
# that have five Fridays. This one is harder than it sounds since you must
# account for leap years.

SECONDS_PER_DAY = 60*60*24
SECONDS_PER_WEEK = SECONDS_PER_DAY * 7

def five_fridays(year)
  months_with_5_fridays = 0
  day = 0
  loop do
    day += 1
    break if Time.new(year, 1, day).friday?
  end
  date = Time.new(year, 1, day)
  month = 1
  control_month = 1
  count = 0
  1.upto(52) do
    if month == control_month
      count += 1
    else
      control_month = month
      count = 1
    end
    months_with_5_fridays += 1 if count == 5
    month = (date += SECONDS_PER_WEEK).month
  end
  months_with_5_fridays
end

p five_fridays(1986)
