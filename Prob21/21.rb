#!/usr/bin/ruby -w

require 'mathn'

def sumOfDivisors(num)
  sum = 1
  (2..Math.sqrt(num)).each { |i| sum += i and sum += num / i if (num % i).zero? }

  sum
end

sum = 0
(1..10_000).each do |i|
  j = sumOfDivisors(i)

  sum += i if i != j && sumOfDivisors(j) == i
end

p sum
