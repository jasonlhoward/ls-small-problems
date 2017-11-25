# 1000 Lights

# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass,
# you toggle switches 2, 4, 6, and so on. On the third pass, you go back
# again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n
# repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.
# The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.
# The return value is [1, 4, 9].

def print_result(bank)
  result = []
  bank.each_with_index { |el, index| result << index + 1 if el == 1 }
  result
end

def switcharoo(switch_count)
  bank = Array.new(switch_count, -1)
  1.upto(switch_count) do |x|
    switch = x
    loop do
      bank[switch - 1] *= -1
      switch += x
      break if switch > switch_count
    end
  end
  print_result(bank)
end

p switcharoo(5)
p switcharoo(10)
p switcharoo(1000)
