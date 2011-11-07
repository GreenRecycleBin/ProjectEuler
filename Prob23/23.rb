#!/usr/bin/ruby -w

require 'mathn'
require 'set'

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

def abundant?(n)
  sumOfDivisors(n) > n
end

# Every number greater than 20161 can be expressed as a sum of two abundant numbers
limit = 20161
abundants = []
(1..limit).each { |n| abundants << n if abundant?(n) }

abundant_sums = Set.new()
abundants.each_index do |i|
  (i...abundants.size).each do |j|
    sum = abundants[i] + abundants[j]
    break if sum > limit
    abundant_sums << sum
  end
end

result = (0..limit).to_a.keep_if { |x| !abundant_sums.include?(x) }

p result.inject(:+)
