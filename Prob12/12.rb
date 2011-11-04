#!/usr/bin/ruby -w

require 'mathn'

def numDivisors(num)
  num_factor = Prime.prime_division(num)

  num_divisors = 1
  num_factor.each { |component| num_divisors *= component.last + 1 }

  num_divisors += 1
end

def firstTriangleNumberToHaveMoreThanNumDivisors(num_divisor)
  n = 1
  num = 0

  loop do
    num = n * (n + 1) / 2
    break if numDivisors(num) > num_divisor
    n += 1
  end

  num
end

p firstTriangleNumberToHaveMoreThanNumDivisors(500)
