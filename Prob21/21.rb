#!/usr/bin/ruby -w

require 'mathn'

def sumOfDivisors(n)
  sum = 1
  (2..Math.sqrt(n)).each do |i|
    if (n % i).zero?
      sum += i

      if n / i != i
        sum += n / i
      end
    end
  end

  sum
end

sum = 0
(1..10_000).each do |i|
  j = sumOfDivisors(i)

  sum += i if i != j && sumOfDivisors(j) == i
end

p sum
