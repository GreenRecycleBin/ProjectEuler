#!/usr/bin/ruby -w

require 'mathn'

# http://mathworld.wolfram.com/DecimalExpansion.html
# http://mathworld.wolfram.com/MultiplicativeOrder.html

# Because any nonregular fraction m / n is periodic, and has a period
# (i.e. recurring cycle length) independent of m,
# which is at most n - 1 digits long. Equality happens when n is a prime.

# Return the cycle length of 1 / n; n is a prime.
def recurringCycleLengthOfPrime(n)
  return 0 if n == 2 || n == 5

  # Solve multiplicative order of 10 (mod n)
  i = 1
  until (10 ** i - 1) % n == 0
    i = i.next
  end

  i
end

max = 0
Prime.each do |n|
  break if n >= 1_000

  curr_len = recurringCycleLengthOfPrime(n)
  max = max > curr_len ? max : curr_len
end

p max + 1
