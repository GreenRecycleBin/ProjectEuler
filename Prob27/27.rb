#!/usr/bin/ruby -w

def equalSumOfDigitsWithPower?(n, power)
  n == n.to_s.split(//).inject(0) { |sum, num| sum + num.to_i ** power }
end

def getMaxBound(power)
  base, num_digits, upper_bound = 9 ** power, 0, 0

  while upper_bound.to_s.size > num_digits
    num_digits = num_digits.next
    upper_bound = base * num_digits
  end

  upper_bound
end

nums = (10..getMaxBound(5)).select { |n| equalSumOfDigitsWithPower?(n, 5) }
puts nums.inject(:+)
